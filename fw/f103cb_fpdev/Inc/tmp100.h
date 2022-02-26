/** @file
 *  TMP100 - I2C temperature sensors API
 *
 *  @author MJ 2022
 */

#ifndef __TMP100_H__
#define __TMP100_H__

#include "stdint.h"

#define TMP100_ADDR(A2_0)        (0x90 | ((A2_0 & 0x07) << 1))

#define TMP100_TEMP_REG          0x00  // 16-bit read-only Temperature register
#define TMP100_CFG_REG           0x01  // 8-bit Configuration- and Status register
#define TMP100_TLOW_REG          0x02  // 16-bit Thermostat low-limit register
#define TMP100_THIGH_REG         0x03  // 16-bit Thermostat high-limit register

#define TMP100_CFG_SD_Msk        0x01
#define TMP100_CFG_SD_Shift      0
#define TMP100_CFG_TM_Msk        0x02
#define TMP100_CFG_TM_Shift      1
#define TMP100_CFG_POL_Msk       0x04
#define TMP100_CFG_POL_Shift     2
#define TMP100_CFG_FLT_Msk       0x18
#define TMP100_CFG_FLT_Shift     3
#define TMP100_CFG_FLT_1         (0 << TMP100_CFG_FLT_Shift)
#define TMP100_CFG_FLT_2         (1 << TMP100_CFG_FLT_Shift)
#define TMP100_CFG_FLT_4         (2 << TMP100_CFG_FLT_Shift)
#define TMP100_CFG_FLT_6         (3 << TMP100_CFG_FLT_Shift)
#define TMP100_CFG_RES_Msk       0x60
#define TMP100_CFG_RES_Shift     5
#define TMP100_CFG_RES_9b        (0 << TMP100_CFG_RES_Shift)
#define TMP100_CFG_RES_10b       (1 << TMP100_CFG_RES_Shift)
#define TMP100_CFG_RES_11b       (2 << TMP100_CFG_RES_Shift)
#define TMP100_CFG_RES_12b       (3 << TMP100_CFG_RES_Shift)
#define TMP100_CFG_OS_ALRT_Msk   0x80
#define TMP100_CFG_OS_ALRT_Shift 7

#define TMP100_CFG_SD            (1 << TMP100_CFG_SD_Shift)
#define TMP100_CFG_INTMODE       (1 << TMP100_CFG_TM_Shift)



/* List of the 8 possible TMP100 slave addr configurations */
extern const uint8_t g_tmp100_device_addr_list[8];

/* Probe I2C bus for all available device addresses and read status registers.
   Return: Nbr of devices found, an optional list of the device addresses and
   an optional list of the found device's status registers.
*/
int tmp100_probe_all(uint8_t *devices_found, uint8_t *devices_status, uint32_t max_devices);

/* Issue an I2C Generai Call with a command to trigger TMP100 soft-reset */
int tmp100_i2c_reset(void);

/* Read currently stored temperature reading */
int tmp100_read_temp(uint8_t device);

/* Read status register */
uint8_t tmp100_read_status(uint8_t device);

/* Read previous temperature reading and trigger a new one-shot conversion */
int tmp100_oneshot(uint8_t device);

int tmp100_set_limits(uint8_t device, int16_t low_limit, int16_t high_limit);

int tmp100_get_limits(uint8_t device, int16_t *low_limit, int16_t *high_limit);


#endif /*__TMP100_H__ */
