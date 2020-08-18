/* USER CODE BEGIN Header */
/*
 ******************************************************************************
  * File Name          : tsl_user.h.h
  * Description        : Touch-Sensing user configuration.
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
#ifndef __TSL_USER_H
#define __TSL_USER_H

#include "tsl.h"
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

#include "stm32l0xx_hal.h"

/* Select if you use STMStudio software (0=No, 1=Yes) */
#define USE_STMSTUDIO (0)

#if USE_STMSTUDIO > 0
#include "stmCriticalSection.h"
#define STMSTUDIO_LOCK {enterLock();}
#define STMSTUDIO_UNLOCK {exitLock();}
#else
#define STMSTUDIO_LOCK
#define STMSTUDIO_UNLOCK
#endif

typedef enum
{
  TSL_USER_STATUS_BUSY       = 0, /**< The bank acquisition is on-going */
  TSL_USER_STATUS_OK_NO_ECS  = 1, /**< The bank acquisition is ok, no time for ECS */
  TSL_USER_STATUS_OK_ECS_ON  = 2, /**< The bank acquisition is ok, ECS finished */
  TSL_USER_STATUS_OK_ECS_OFF = 3  /**< The bank acquisition is ok, ECS not executed */
} tsl_user_status_t;

/* Channel IOs definition */
#define CHANNEL_0_IO_MSK    (TSC_GROUP1_IO2)
#define CHANNEL_0_GRP_MSK   (TSC_GROUP1)
#define CHANNEL_0_SRC       (TSC_GROUP1_IDX) /* Index in source register (TSC->IOGXCR[]) */
#define CHANNEL_0_DEST      (0) /* Index in destination result array */

#define CHANNEL_1_IO_MSK    (TSC_GROUP4_IO4)
#define CHANNEL_1_GRP_MSK   (TSC_GROUP4)
#define CHANNEL_1_SRC       (TSC_GROUP4_IDX)
#define CHANNEL_1_DEST      (1)

#define CHANNEL_2_IO_MSK    (TSC_GROUP6_IO4)
#define CHANNEL_2_GRP_MSK   (TSC_GROUP6)
#define CHANNEL_2_SRC       (TSC_GROUP6_IDX)
#define CHANNEL_2_DEST      (2)

#define CHANNEL_3_IO_MSK    (TSC_GROUP3_IO4)
#define CHANNEL_3_GRP_MSK   (TSC_GROUP3)
#define CHANNEL_3_SRC       (TSC_GROUP3_IDX)
#define CHANNEL_3_DEST      (3)

#define CHANNEL_4_IO_MSK    (TSC_GROUP2_IO4)
#define CHANNEL_4_GRP_MSK   (TSC_GROUP2)
#define CHANNEL_4_SRC       (TSC_GROUP2_IDX)
#define CHANNEL_4_DEST      (4)

#define CHANNEL_5_IO_MSK    (TSC_GROUP5_IO2)
#define CHANNEL_5_GRP_MSK   (TSC_GROUP5)
#define CHANNEL_5_SRC       (TSC_GROUP5_IDX)
#define CHANNEL_5_DEST      (5)

#define CHANNEL_6_IO_MSK    (TSC_GROUP2_IO2)
#define CHANNEL_6_GRP_MSK   (TSC_GROUP2)
#define CHANNEL_6_SRC       (TSC_GROUP2_IDX)
#define CHANNEL_6_DEST      (6)

#define CHANNEL_7_IO_MSK    (TSC_GROUP3_IO2)
#define CHANNEL_7_GRP_MSK   (TSC_GROUP3)
#define CHANNEL_7_SRC       (TSC_GROUP3_IDX)
#define CHANNEL_7_DEST      (7)

#define CHANNEL_8_IO_MSK    (TSC_GROUP1_IO2)
#define CHANNEL_8_GRP_MSK   (TSC_GROUP1)
#define CHANNEL_8_SRC       (TSC_GROUP1_IDX)
#define CHANNEL_8_DEST      (8)

#define CHANNEL_9_IO_MSK    (TSC_GROUP6_IO2)
#define CHANNEL_9_GRP_MSK   (TSC_GROUP6)
#define CHANNEL_9_SRC       (TSC_GROUP6_IDX)
#define CHANNEL_9_DEST      (9)

/* Shield IOs definition */
#define SHIELD_IO_MSK      (0)

/* Bank(s) definition */
/* 5CH_LIN_H_NBR1 bank definition*/
#define BANK_0_NBCHANNELS (5)
#define BANK_0_MSK_CHANNELS   (CHANNEL_0_IO_MSK | CHANNEL_1_IO_MSK | CHANNEL_2_IO_MSK | CHANNEL_3_IO_MSK | CHANNEL_4_IO_MSK)
#define BANK_0_MSK_GROUPS     (CHANNEL_0_GRP_MSK | CHANNEL_1_GRP_MSK | CHANNEL_2_GRP_MSK | CHANNEL_3_GRP_MSK | CHANNEL_4_GRP_MSK)

/* 5CH_LIN_H_NBR2 bank definition*/
#define BANK_1_NBCHANNELS (5)
#define BANK_1_MSK_CHANNELS   (CHANNEL_5_IO_MSK | CHANNEL_6_IO_MSK | CHANNEL_7_IO_MSK | CHANNEL_8_IO_MSK | CHANNEL_9_IO_MSK)
#define BANK_1_MSK_GROUPS     (CHANNEL_5_GRP_MSK | CHANNEL_6_GRP_MSK | CHANNEL_7_GRP_MSK | CHANNEL_8_GRP_MSK | CHANNEL_9_GRP_MSK)

/* User Parameters */
extern CONST TSL_Bank_T MyBanks[];
extern CONST TSL_LinRot_T MyLinRots[];
extern CONST TSL_Object_T MyObjects[];
extern TSL_ObjectGroup_T MyObjGroup;

void tsl_user_Init(void);
tsl_user_status_t tsl_user_Exec(void);
void tsl_user_SetThresholds(void);

#endif /* __TSL_USER_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
