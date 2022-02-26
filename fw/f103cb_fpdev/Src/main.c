/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "asm_utils.h"
#include "buttons.h"
#include "sw_i2c.h"
#include "tmp100.h"
#include "ssd1322.h"
#include "util.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define LED_BLINK_DELAY_MS 500U

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

// The systick of last LED state change
static uint32_t g_ledblink_tick;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

static void print_device_info(void)
{
    uart_printf(" === Device Info === \n");
    uart_printf("FW build on %s %s\n", __DATE__, __TIME__);
    uart_printf("Device ID: 0x%08X Rev: 0x%08X\n", HAL_GetDEVID(), HAL_GetREVID());
    uart_printf("Device UID: 0x%08X %08X %08X\n", HAL_GetUIDw0(), HAL_GetUIDw1(), HAL_GetUIDw2());
    uart_printf("Milliseconds since HAL start: %u\n", HAL_GetTick());
    uart_puts(" =================== \n\n");
}

static void print_hwids(void)
{
    int mb_hwid = adc_get_hwid_mb(0);
    int fp_hwid = adc_get_hwid_fp(0);

    uint32_t mb_mv = 3300U * mb_hwid / 4096;
    uint32_t fp_mv = 3300U * fp_hwid / 4096;


    uart_printf("HWID: MB=0x%04X (%u.%03u V), FP=0x%04X (%u.%03u V)\n",
                mb_hwid, mb_mv/1000U, mb_mv%1000U,
                fp_hwid, fp_mv/1000U, fp_mv%1000U);
}



/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

    util_dwt_cycle_counter_init();

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART1_UART_Init();
  MX_SPI1_Init();
  MX_ADC1_Init();
  MX_TIM3_Init();
  MX_TIM1_Init();
  MX_TIM2_Init();
  MX_TIM4_Init();
  MX_USART3_UART_Init();
  /* USER CODE BEGIN 2 */

    uart_puts("\nHello, World!\n");

    HAL_ADCEx_Calibration_Start(&hadc1);

    sw_i2c_init();

    print_device_info();
    print_hwids();
//    uart_printf("This is an int: %d - test: %s!\n", 42, "SUCCESSFUL");

    uart_enable_rx_irq();

    uint8_t tmp100_devs[8] = { 0 };
    int nbr_tmp100_found = tmp100_probe_all(tmp100_devs, NULL, 8);

    uart_printf("Nbr TMP100 sensors found: %d\n", nbr_tmp100_found);
    for (int i = 0; i < nbr_tmp100_found; i++) {
        uart_printf("  ID[%d] = 0x%02X\n", i+1, tmp100_devs[i]);
    }

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
    while (1) {
        static uint8_t oled_master_contrast = 0x0F;
        static uint8_t oled_contrast_iseg = 112;
        static uint8_t mode = 0, inv = 0;
        static uint8_t display_is_on = 0;
        static uint8_t mosi_pin_state = 1;
        static uint8_t flash_cs = 1;
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

        // Check if button-handler is triggered for periodic processing?
        if (buttons_is_periodic_handler_triggered()) {
            buttons_periodic_debounce_handler(NULL);
        }

        // Update LED if enough time's passed since last toggle
        uint32_t tick = HAL_GetTick();
        if (tick - g_ledblink_tick >= LED_BLINK_DELAY_MS) {
            // Toggle LED
            g_ledblink_tick = tick;
            HAL_GPIO_TogglePin(BRD_LED_AUX_BOOT0_GPIO_Port, BRD_LED_AUX_BOOT0_Pin);
        }

        while (uart_rx_queue() != 0) {
            uint8_t ch = uart_getc();
            switch (ch) {
            case 'h':
                uart_puts("\n-== DebugUART menu ==-\n");
                uart_puts("  h: help menu\n");
                uart_puts("  r: read TMP100 temps\n");
                uart_puts("  R: oneshot TMP100s\n");
                uart_puts("  P: re-init TMP100s\n");
                uart_puts("  t: toggle PB5(MOSI)\n");
                uart_puts("  T: toggle FlashCSn\n");
                uart_puts("  o: display init\n");
                uart_puts("  O: display off\n");
                uart_puts("  l: display logo\n");
                uart_puts("  m: disp.mode\n");
                uart_puts("  c: disp clr\n");
                uart_puts("  f/F: disp. fill\n");
                uart_puts("  i: disp. inv.\n");
                uart_puts("  p: pack/unpack test\n");
                uart_puts("  ,; inc contrast\n");
                uart_puts("  .: dec contrast\n");
                uart_puts("  +: inc brightness\n");
                uart_puts("  -: dec brightness\n");
                uart_puts("  ?: analog HWIDs\n");
                uart_puts("  !: device info\n");
                uart_puts("  x: warm reset\n");
                break;
                case 'r': {
                    if (nbr_tmp100_found == 0) {
                        uart_puts("No TMP100s found!\n");
                        break;
                    }
                    uart_puts("Reading temps...\n");
                    for (int i = 0; i < nbr_tmp100_found; i++) {
                        int t = tmp100_read_temp(tmp100_devs[i]);
                        uint8_t s = tmp100_read_status(tmp100_devs[i]);
                        uart_printf("  %d (TMP100<0x%02X>): T = 0x%04X CFG=0x%02X\n", i+1, tmp100_devs[i], t, s);
                    }
                    break;
                }
                case 'R': {
                    if (nbr_tmp100_found == 0) {
                        uart_puts("No TMP100s found!\n");
                        break;
                    }
                    uart_puts("One-shot temps...\n");
                    for (int i = 0; i < nbr_tmp100_found; i++) {
                        int t = tmp100_oneshot(tmp100_devs[i]);
                        uint8_t s = tmp100_read_status(tmp100_devs[i]);
                        uart_printf("  %d (TMP100<0x%02X>): T = 0x%04X CFG=0x%02X\n", i+1, tmp100_devs[i], t, s);
                    }
                    break;
                }
                case 'P': {
                    int nbr_tmp100_found = tmp100_probe_all(tmp100_devs, NULL, 8);
                    uart_printf("%d TMP100 sensors found\n", nbr_tmp100_found);
                    break;
                }
                case 'p': {
                    uint32_t unpacked[256/4] = { 0 };
                    uint32_t packed[128/4] = { 0 };

                    const uint8_t *p = &Logo_256x64[8192 - 128*10];
                    const uint32_t *org = (const uint32_t*)p;
                    uint32_t *d = (uint32_t*)p;

                    uart_puts("32 words original (packed) data:\n");
                    for (int i = 32; i > 0; i--) {
                        uart_printf("0x%08X%s", *d++, (i-1) % 8 ? ", " : "\r\n");
                    }

                    uart_puts("\n\nUnpacking 32->64 words...\n");
                    uint8_t *pk = (uint8_t*)p;
                    uint8_t *up = (uint8_t*)&unpacked[0];
                    for (int i = 128/16; i > 0; i--) {
                        pk = (uint8_t*)pixels32_unpack((const uint32_t*)pk, (uint32_t*)up);
                        up += 32;
                    }
                    d = &unpacked[0];
                    for (int i = 64; i > 0; i--) {
                        uart_printf("0x%08X%s", *d++, (i-1) % 8 ? ", " : "\r\n");
                    }

                    uart_puts("\n\nRe-packing 64->32 words...\n");
                    up = (uint8_t*)&unpacked[0];
                    pk = (uint8_t*)&packed[0];
                    for (int i = 256/32; i > 0; i--) {
                        up = (uint8_t*)pixels32_pack((const uint32_t*)up, (uint32_t*)pk);
                        pk += 16;
                    }
                    d = &packed[0];
                    int errors = 0;
                    for (int i = 32; i > 0; i--) {
                        const char* errstr = (*d != *org) ? "<--!" : "";
                        const char* sepstr = (i-1) % 8 ? ", " : "\r\n";
                        uart_printf("0x%08X%s%s", *d, errstr, sepstr);
                        if (*d++ != *org++) errors++;
                    }
                    if (errors) {
                        uart_printf("\nUnpack/repack test FAILED! %d words mismatched\n", errors);
                    } else {
                        uart_puts("\nUnpack/repack test completed OK!\n");
                    }
                }
                break;
            case ',':
                if (oled_master_contrast < 0x0F)
                    oled_master_contrast++;
                else
                    uart_puts("Contrast MAX (15)\n");
                ssd1322_set_dimming(oled_master_contrast);
                uart_printf("Contrast: %u\n", oled_master_contrast);
                break;
            case '.':
                if (oled_master_contrast != 0)
                    oled_master_contrast--;
                else
                    uart_puts("Contrast MIN (0)\n");
                ssd1322_set_dimming(oled_master_contrast);
                uart_printf("Contrast: %u\n", oled_master_contrast);
                break;
            case '+':
                if (oled_contrast_iseg < 0xFF)
                    oled_contrast_iseg++;
                else
                    uart_puts("Brightness MAX (255)\n");
                ssd1322_set_brightness(oled_contrast_iseg);
                uart_printf("Brightness: %u\n", oled_contrast_iseg);
                break;
            case '-':
                if (oled_contrast_iseg != 0)
                    oled_contrast_iseg--;
                else
                    uart_puts("Brightness MIN (0)\n");
                ssd1322_set_brightness(oled_contrast_iseg);
                uart_printf("Brightness: %u\n", oled_contrast_iseg);
                break;
            case 't': {
                GPIO_InitTypeDef GPIO_InitStruct = {0};
                GPIO_InitStruct.Pin = GPIO_PIN_5;
                GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
                GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
                HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, mosi_pin_state);
                uart_printf("PB5(MOSI) %s\n", mosi_pin_state ? "HIGH" : "LOW");
                mosi_pin_state = mosi_pin_state ? 0 : 1;
                }
                break;
            case 'T': {
                GPIO_InitTypeDef GPIO_InitStruct = {0};
                GPIO_InitStruct.Pin = GPIO_PIN_5;
                GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
                GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
                HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
                flash_cs = flash_cs ? 0 : 1;
                HAL_GPIO_WritePin(FLASH_CSn_GPIO_Port, FLASH_CSn_Pin, flash_cs);
                uart_printf("Flash_CSn %s\n", flash_cs ? "HIGH" : "LOW");
                if ((SPI1->CR1 & SPI_CR1_SPE) != SPI_CR1_SPE)  {
                    /* Enable SPI peripheral */
                    SET_BIT(SPI1->CR1, SPI_CR1_SPE);
                }
                SPI1->DR = 0x55;
                }
                break;
            case 'o':
                ssd1322_init();
                display_is_on = 1;
//    ssd1322_fill_display(0x13579bdf);
                ssd1322_fill_display(0x00);
                uart_puts("Display is ON!\n");
                break;
            case 'O':
                ssd1322_uninit();
                display_is_on = 0;
                uart_puts("Display is OFF!\n");
                break;
            case 'l':
                if (display_is_on) {
                    ssd1322_update_display(Logo_256x64, sizeof(Logo_256x64));
                    uart_puts("Logo_256x64 displayed\r\n");
                } else uart_puts("Disp is off!\n");
                break;
            case 'm':
                if (display_is_on) {
                    ssd1322_set_display_mode(mode);
                    uart_printf("Dispmode: %u\n", mode);
                    mode = (mode + 1) & 0x03;
                } else uart_puts("Disp is off!\n");
                break;
            case 'c':
                if (display_is_on) {
                    ssd1322_fill_display(0x00);
                    uart_puts("disp fill 0x00\n");
                } else uart_puts("Disp is off!\n");
                break;
            case 'f':
                if (display_is_on) {
                    ssd1322_fill_display(0x13579bdf);
                    uart_puts("disp fill 0x13579bdf\n");
                } else uart_puts("Disp is off!\n");
                break;
            case 'F':
                if (display_is_on) {
                    ssd1322_fill_display(0xfdb97531);
                    uart_puts("disp fill 0xfdb97531\n");
                } else uart_puts("Disp is off!\n");
                break;
            case 'i':
                if (display_is_on) {
                    ssd1322_set_display_mode(inv?SET_DISPLAY_MODE_INV:SET_DISPLAY_MODE_NORM);
                    uart_printf("Display %s inverted\n", inv ? "is" : "not");
                    inv = (inv + 1) & 0x01;
                } else uart_puts("Disp is off!\n");
                break;

            case '!':
                print_device_info();
                break;
            case '?':
                print_hwids();
                break;
            case 'x':
                NVIC_SystemReset();
                break;
            default:
                // just echo for now...
                uart_putc(ch);
                break;
            }
        }

    }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV2;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
  PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV8;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
    uart_printf("Error_Handler() invoked, stopping...\n");
//    __disable_irq();
    while (1) {
    }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
    uart_printf("Assert failed: file %s on line %d\n", file, line);

  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

