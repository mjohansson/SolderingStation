/** @file
 * SW-bitbanged of 100kbps I2C master API
 *
 *
 *
 * @author MJ 2022
 */

#ifndef __SW_I2C_H__
#define __SW_I2C_H__

#include "stdint.h"

// Configure SW-I2C bus pins; idle state
void sw_i2c_init(void);

// Single byte register-write transaction
int sw_i2c_write_byte_register(uint8_t busaddr, uint8_t regaddr, uint8_t data);

// Single byte register-read transaction
uint8_t sw_i2c_read_byte_register(uint8_t busaddr, uint8_t regaddr, int *acked);

// Multi-bytes write transaction (register addr byte(s) can be included in write-data array)
int sw_i2c_write_bytes_register(uint8_t busaddr, const uint8_t *wdata, uint32_t wlen);

// Multi-bytes register-read transaction
int sw_i2c_read_bytes_register(uint8_t busaddr, const uint8_t *reg, uint32_t reg_len,
                               uint8_t *rdata, uint32_t data_len);

// Low-level API: open a new bus transaction. Caller must set LSB to R/~W mode
int sw_i2c_start_transaction(uint8_t busaddr);

// Low-level API: write a single byte, return true if ACK:ed
int sw_i2c_write_byte(uint8_t data);

// Low-level API: read a single byte, send provided ACK/NACK state to device
uint8_t sw_i2c_read_byte(int ack);

// Low-level API: stop bus transaction
void sw_i2c_stop_transaction(void);


#endif /*__SW_I2C_H__ */
