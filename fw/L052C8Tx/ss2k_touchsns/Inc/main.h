/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
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
#include "stm32l0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define DBGLED_Rn_Pin GPIO_PIN_13
#define DBGLED_Rn_GPIO_Port GPIOC
#define DBGLED_Gn_Pin GPIO_PIN_14
#define DBGLED_Gn_GPIO_Port GPIOC
#define AUX_IRQn_Pin GPIO_PIN_15
#define AUX_IRQn_GPIO_Port GPIOC
#define GND_passthrough_Pin GPIO_PIN_0
#define GND_passthrough_GPIO_Port GPIOA
#define GND_output_Pin GPIO_PIN_4
#define GND_output_GPIO_Port GPIOA
#define GND_pt4_Pin GPIO_PIN_10
#define GND_pt4_GPIO_Port GPIOB
#define GND_pt5_Pin GPIO_PIN_11
#define GND_pt5_GPIO_Port GPIOB
#define GND_passthrough2_Pin GPIO_PIN_15
#define GND_passthrough2_GPIO_Port GPIOB
#define GND_passthrough3_Pin GPIO_PIN_15
#define GND_passthrough3_GPIO_Port GPIOA
#define USART1_RX_passthrough_Pin GPIO_PIN_5
#define USART1_RX_passthrough_GPIO_Port GPIOB
#define USART1_TX_passthrough_Pin GPIO_PIN_6
#define USART1_TX_passthrough_GPIO_Port GPIOB
#define GND_pth6_Pin GPIO_PIN_8
#define GND_pth6_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
