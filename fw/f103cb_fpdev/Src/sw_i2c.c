/** @file
 * Bit-banged SW-implementation of 100kbps I2C master
 *
 * See also: https://www.nxp.com/docs/en/user-guide/UM10204.pdf
 *  or https://www.nxp.com/docs/en/application-note/AN10216.pdf
 *
 * Using DTW cycle-counter for microsecond delays; inspired by (among others):
 *  https://deepbluembedded.com/stm32-delay-microsecond-millisecond-utility-dwt-delay-timer-delay
 *
 * @author MJ 2022
 */

#include "sw_i2c.h"
#include "main.h"
#include "util.h"


#define I2C_BIT_RATE   (100000UL)

// General delay duration, e.g. SCL high or low duration.
// (For 100kbps, this should typically be 5us; the standard mandates >= 4.7)
#define I2C_DLY_US     (1000000UL / I2C_BIT_RATE / 2)

/* STM32/HAL-specific pin manipulation */
#define HIGH           GPIO_PIN_SET
#define LOW            GPIO_PIN_RESET

#define I2C_ACK        LOW
#define I2C_NACK       HIGH

#define SCL(state)     HAL_GPIO_WritePin(SW_I2C_SCL_GPIO_Port, SW_I2C_SCL_Pin, state)
#define SDA(state)     HAL_GPIO_WritePin(SW_I2C_SDA_GPIO_Port, SW_I2C_SDA_Pin, state)
#define READ_SDA()     HAL_GPIO_ReadPin(SW_I2C_SDA_GPIO_Port, SW_I2C_SDA_Pin)
#define UDELAY(us)     util_dwt_delay_us(us)
#define SEND_ACK()     sw_i2c_write_bit(I2C_ACK)
#define SEND_NACK()    sw_i2c_write_bit(I2C_NACK)

static void sw_i2c_set_start(void)
{
    SDA(HIGH);
    SCL(HIGH);
    UDELAY(I2C_DLY_US);
    SDA(LOW);
    UDELAY(I2C_DLY_US);
    SCL(LOW);
//    UDELAY(I2C_DLY_US);
}

static void sw_i2c_set_stop(void)
{
    SDA(LOW);
    UDELAY(1);
    SCL(HIGH);
    UDELAY(I2C_DLY_US);
    SDA(HIGH);
//    UDELAY(I2C_DLY_US);
}

static void sw_i2c_write_bit(int b)
{
    SDA(b ? HIGH : LOW);

    UDELAY(I2C_DLY_US);
    SCL(HIGH);
    UDELAY(I2C_DLY_US);
    SCL(LOW);
}

static int sw_i2c_read_bit(void)
{
    int b;

    SDA(HIGH);
    UDELAY(I2C_DLY_US);
    SCL(HIGH);
    UDELAY(I2C_DLY_US);

    b = READ_SDA();

    SCL(LOW);

    return b;
}



void sw_i2c_init(void)
{
    /* STM32/HAL-specific pin mux to initialize I2C bus.
       Set both pins to open-drain outputs, enable internal pull-ups, high speed.

       (TODO: more generic version with separate bus context structs)
    */
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    util_dwt_cycle_counter_init();

    // Idle bus state
    SCL(HIGH);
    SDA(HIGH);

    GPIO_InitStruct.Pin = SW_I2C_SCL_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(SW_I2C_SCL_GPIO_Port, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = SW_I2C_SDA_Pin;
    HAL_GPIO_Init(SW_I2C_SDA_GPIO_Port, &GPIO_InitStruct);
}

int sw_i2c_write_byte_register(uint8_t busaddr, uint8_t regaddr, uint8_t data)
{
    // RETURN: true if ACK:ed; 0 if failed
    int res = 0;
    busaddr &= 0xFE;

    sw_i2c_set_start();
    if (sw_i2c_write_byte(busaddr)) {
        if (sw_i2c_write_byte(regaddr)) {
            res = sw_i2c_write_byte(data);
        }
    }

    sw_i2c_set_stop();
    return res;
}

uint8_t sw_i2c_read_byte_register(uint8_t busaddr, uint8_t regaddr, int *acked)
{
    // RETURN: a byte read from an i2c device register; or 0x00 if failed
    int ack = 0;
    uint8_t res = 0;
    busaddr &= 0xFE;

    sw_i2c_set_start();
    if (sw_i2c_write_byte(busaddr)) {
        if (sw_i2c_write_byte(regaddr)) {
            sw_i2c_set_start();   // repeated start, initiate read phase
            if (sw_i2c_write_byte(busaddr | 0x01)) {
                ack++;
                res = sw_i2c_read_byte(0);  // NACK to end transaction
            }
        }
    }

    if (acked) { *acked = ack; }

    sw_i2c_set_stop();
    return res;
}

int sw_i2c_write_bytes_register(uint8_t busaddr, const uint8_t *wdata, uint32_t wlen)
{
    // RETURN: <wlen> if all bytes written OK; or negative nbr of bytes written if not all ACK:ed
    int res = 0;
    busaddr &= 0xFE;

    sw_i2c_set_start();
    if (sw_i2c_write_byte(busaddr)) {
        for (int i = 0; i < wlen; i++, res++) {
            if (!sw_i2c_write_byte(wdata[i])) {
                res = 0 - i;  // successful bytes written so far
                break;
            }
        }
    }

    sw_i2c_set_stop();
    return res;
}

int sw_i2c_read_bytes_register(uint8_t busaddr, const uint8_t *reg, uint32_t reg_len,
                               uint8_t *rdata, uint32_t data_len)
{
    // RETURN: 0 if busaddr or reg-write fails; <data_len> if all data-bytes read OK
    int res = 0;
    int len;
    busaddr &= 0xFE;

    sw_i2c_set_start();
    if (sw_i2c_write_byte(busaddr)) {
        len = (int)reg_len;
        for (int i = 0; i < len; i++) {
            if (!sw_i2c_write_byte(reg[i]) && (i < (len - 1)) ) {
                // unexpected/premature NACK while writing reg-bytes ?
                sw_i2c_set_stop();
                return 0;
            } // else: continue while ACK:ed or if only last byte was NACK:ed
        }
        sw_i2c_set_start();  // repeated start, data read phase
        len = (int)data_len;
        if (sw_i2c_write_byte(busaddr | 0x01)) {
            for (res = 0; res < len - 1; res++) {
                *rdata++ = sw_i2c_read_byte(1); // ACK every byte, except...
            }
            // ... the last; read it and NACK
            *rdata++ = sw_i2c_read_byte(0);
            res++;
        }
    }

    sw_i2c_set_stop();
    return res;
}

// Low-level API: open a new bus transaction
int sw_i2c_start_transaction(uint8_t busaddr)
{
    // RETURN: true if ACK:ed; 0 if failed
    int res;

    sw_i2c_set_start();
    res = sw_i2c_write_byte(busaddr);

    return res;
}

// Low-level API: transmit a byte on an assumed previously opened bus
int sw_i2c_write_byte(uint8_t data)
{
    // RETURN: true if byte was ACK:ed; 0 if NACK

    for (int b = 0; b < 8; b++) {
        sw_i2c_write_bit(data & 0x80);
        data = data << 1;
    }

    int rsp = sw_i2c_read_bit();  // '0' = ACK, '1' = NACK
    int ack = (rsp == I2C_ACK);
    return ack;
}

// Low-level API: receive a byte from an assumed previously opened bus
uint8_t sw_i2c_read_byte(int ack)
{
    // RETURN: a byte of data read from the bus
    uint8_t data = 0;

    for (int b = 0; b < 8; b++) {
        data = (data << 1) | sw_i2c_read_bit();
    }

    // host-driven ack/nack bit (NOTE: ack is active low, so invert the flag)
    sw_i2c_write_bit( ack ? I2C_ACK : I2C_NACK );

    return data;
}

// Low-level API: stop bus transaction
void sw_i2c_stop_transaction(void)
{
    sw_i2c_set_stop();
}
