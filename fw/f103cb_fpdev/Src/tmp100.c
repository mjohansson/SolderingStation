/** @file
 * TMP100 I2C temperature sensors
 *
 * See also: https://www.ti.com/document-viewer/TMP100/datasheet
 *
 * @author MJ 2022
 */

#include <string.h>
#include "tmp100.h"
#include "sw_i2c.h"

/* List of the 8 possible TMP100 slave addr configurations */
const uint8_t g_tmp100_device_addr_list[8] = { 0x90, 0x92, 0x94, 0x98, 0x9A, 0x9C, 0x96, 0x9E };

#define I2C_GENERAL_CALL_ADDR    0x00
#define I2C_GENERAL_RESET_CMD    0x06


#define TMP100_CFG_OS_DEFAULT(res) (TMP100_CFG_SD | TMP100_CFG_INTMODE |        \
                                    (res & TMP100_CFG_RES_Msk) | TMP100_CFG_OS_ALRT_Msk )


/* Probe I2C bus for all available device addresses and read status registers.
   Return: Nbr of devices found, an optional list of the device addresses and
   an optional list of the found device's status registers.
*/
int tmp100_probe_all(uint8_t *devices_found, uint8_t *devices_status, uint32_t max_devices)
{
    int res;
    int found = 0;
    uint8_t devs[8] = { 0 };
    uint8_t stats[8] = { 0 };

    // I2C General call, soft-reset
    res = tmp100_i2c_reset();

    for (int i = 0; i < sizeof(g_tmp100_device_addr_list); i++) {
        // try to set 12b mode
        uint8_t cfg = TMP100_CFG_INTMODE | TMP100_CFG_RES_12b;
        res = sw_i2c_write_byte_register(g_tmp100_device_addr_list[i], TMP100_CFG_REG, cfg);
        if (res) {
            devs[found] = g_tmp100_device_addr_list[i];
            uint8_t tmp = sw_i2c_read_byte_register(g_tmp100_device_addr_list[i], TMP100_CFG_REG, &res);
            if (res) {
                stats[found] = tmp;
                found++;
            }
        }
    }

    max_devices = (max_devices > sizeof(devs)) ? sizeof(devs) : max_devices;
    if (devices_found && max_devices) {
        memcpy(devices_found, devs, max_devices);
    }
    if (devices_status && max_devices) {
        memcpy(devices_status, stats, max_devices);
    }

    return found;
}

/* Issue an I2C Generai Call with a command to trigger TMP100 soft-reset */
int tmp100_i2c_reset(void)
{
    int res = 0;
    if (sw_i2c_start_transaction(I2C_GENERAL_CALL_ADDR)) {
        res = sw_i2c_write_byte(I2C_GENERAL_RESET_CMD);
    }
    sw_i2c_stop_transaction();

    return res;
}

/* Read currently stored temperature reading */
int tmp100_read_temp(uint8_t device)
{
    uint8_t buf[4] = { TMP100_TEMP_REG };  // reg = 0x00, ...
    int16_t temp = 0;

    if (sw_i2c_read_bytes_register(device, &buf[0], 1, &buf[1], 2)) {
        temp = (buf[1] << 8) | buf[2];
    }
    return temp;
}

/* Read status register */
uint8_t tmp100_read_status(uint8_t device)
{
    uint8_t status = sw_i2c_read_byte_register(device, TMP100_CFG_REG, NULL);

    return status;
}

/* Read previous temperature reading and trigger a new one-shot conversion */
int tmp100_oneshot(uint8_t device)
{
    // Read previous conversion
    int temp = tmp100_read_temp(device);

    // Trigger new OS conversion
    sw_i2c_write_byte_register(device, TMP100_CFG_REG, TMP100_CFG_OS_DEFAULT(TMP100_CFG_RES_12b));

    return temp;
}

int tmp100_set_limits(uint8_t device, int16_t low_limit, int16_t high_limit)
{
    uint8_t buf[4];
    int res = 0;

    // Transfer MSBs first
    buf[0] = TMP100_TLOW_REG;
    buf[1] = (low_limit >> 8);
    buf[2] = low_limit & 0xFF;
    if (sw_i2c_write_bytes_register(device, buf, 3)) {
        buf[0] = TMP100_THIGH_REG;
        buf[1] = (high_limit >> 8);
        buf[2] = high_limit & 0xFF;
        res = sw_i2c_write_bytes_register(device, buf, 3);
    }

    return res;
}

int tmp100_get_limits(uint8_t device, int16_t *low_limit, int16_t *high_limit)
{
    int res = 0;

    if (low_limit) {
        uint8_t buf[4] = { TMP100_TLOW_REG };

        *low_limit = 0;
        res = sw_i2c_read_bytes_register(device, &buf[0], 1, &buf[1], 2);
        if (res) {
            *low_limit = (buf[1] << 8) | buf[2];
        }
    }

    if (high_limit) {
        uint8_t buf[4] = { TMP100_THIGH_REG };

        *high_limit = 0;
        int res2 = sw_i2c_read_bytes_register(device, &buf[0], 1, &buf[1], 2);
        if (res2) {
            *high_limit = (buf[1] << 8) | buf[2];
        }
        res += res2;
    }

    return res;
}
