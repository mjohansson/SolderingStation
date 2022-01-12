/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

#define AT24C_EEPROM_I2C_ADDR   0xAE  // (0xAF for I2C Read operations)
#define AT24C_EEPROM_TYPE       256   // TBD: maybe enum ? Auto-detect/query ?

#define DS3231_RTC_I2C_ADDR     0xD0  // (0xD1 for I2C Read operations)


/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define USBD_AUDIO_FREQ 8000
#define USBD_CUSTOMHID_OUTREPORT_BUF_SIZE 2
#define USBD_CUSTOM_HID_REPORT_DESC_SIZE 1
#define USBD_DFU_XFER_SIZE 1
#define USBD_DFU_MAX_ITF_NUM 1
#define USBD_DFU_APP_DEFAULT_ADD 0x0800c000
#define MSC_MEDIA_PACKET 1
#define BRD_LED_AUX_BOOT0_Pin GPIO_PIN_13
#define BRD_LED_AUX_BOOT0_GPIO_Port GPIOC
#define AUX_INTn_Pin GPIO_PIN_2
#define AUX_INTn_GPIO_Port GPIOA
#define ADC1_IN5_HWID_MB_Pin GPIO_PIN_5
#define ADC1_IN5_HWID_MB_GPIO_Port GPIOA
#define ADC1_IN6_HWID_FP_Pin GPIO_PIN_6
#define ADC1_IN6_HWID_FP_GPIO_Port GPIOA
#define DISP_DCn_Pin GPIO_PIN_7
#define DISP_DCn_GPIO_Port GPIOA
#define SYS_RSTn_Pin GPIO_PIN_12
#define SYS_RSTn_GPIO_Port GPIOB
#define FP_BTN_2An_Pin GPIO_PIN_13
#define FP_BTN_2An_GPIO_Port GPIOB
#define FP_BTN_2Bn_Pin GPIO_PIN_14
#define FP_BTN_2Bn_GPIO_Port GPIOB
#define FP_ENC_SWn_Pin GPIO_PIN_15
#define FP_ENC_SWn_GPIO_Port GPIOB
#define DISP_CSn_Pin GPIO_PIN_8
#define DISP_CSn_GPIO_Port GPIOA
#define FP_BTN_1Bn_Pin GPIO_PIN_11
#define FP_BTN_1Bn_GPIO_Port GPIOA
#define FP_BTN_1An_Pin GPIO_PIN_12
#define FP_BTN_1An_GPIO_Port GPIOA
#define FLASH_CSn_Pin GPIO_PIN_15
#define FLASH_CSn_GPIO_Port GPIOA
#define FP_ENC_A_TIM4_CH1_Pin GPIO_PIN_6
#define FP_ENC_A_TIM4_CH1_GPIO_Port GPIOB
#define FP_ENC_B_TIM4_CH2_Pin GPIO_PIN_7
#define FP_ENC_B_TIM4_CH2_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
