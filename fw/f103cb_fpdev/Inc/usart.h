/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    usart.h
  * @brief   This file contains all the function prototypes for
  *          the usart.c file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __USART_H__
#define __USART_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

#include <stdarg.h>

/* USER CODE END Includes */

extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart3;

/* USER CODE BEGIN Private defines */

// TX buffer size - must be power of 2 */
#define UART_TXBUF_SZ     256UL

#if (UART_TXBUF_SZ & (UART_TXBUF_SZ - 1u)) != 0
#error UART_TXBUF_SZ must be a power-of-2
#endif

// RX buffer size - must be power of 2 */
#define UART_RXBUF_SZ     32UL

#if (UART_RXBUF_SZ & (UART_RXBUF_SZ - 1u)) != 0
#error UART_RXBUF_SZ must be a power-of-2
#endif

/* USER CODE END Private defines */

void MX_USART1_UART_Init(void);
void MX_USART3_UART_Init(void);

/* USER CODE BEGIN Prototypes */

extern const char g_hex_str[];
extern const char g_hex_str_lc[];

// Blocking uart tx of single char
void uart_putc(int data);

// Blocking uart tx of a nul-terminated string
void uart_puts(const char* str);

// Blocking uart send data
void uart_send(const uint8_t *data, uint32_t length);

// Like send, but with "\r\n" expansions
uint32_t uart_write(const char *buf, uint32_t len);

// Blocking uart rx of a single char
uint8_t uart_getc(void);

// Blocking rx of up-to max_buf_size-1 bytes, or carriage return
char* uart_gets(char *p_rx_buf, int max_buf_size);

// Check TX queue length
uint32_t uart_tx_queue(void);

// Check RX queue length
uint32_t uart_rx_queue(void);

void uart_print_hex_byte(uint8_t byte);

void uart_print_hex_word(uint32_t word);


void uart_put_num(uint32_t value);

void uart_put_hex(uint32_t value);

void uart_stdio_read(uint8_t *rxBuff, uint8_t rxByte);

int uart_get_nums(void);

uint32_t uart_get_hex(void);

void uart_printf(const char *pcString, ...);

int uart_scanf(const char *format, va_list vaArg);



static inline void uart_disable_rx_irq(void) {
    huart1.Instance->CR1 &= ~USART_CR1_RXNEIE;
}

static inline void uart_enable_rx_irq(void) {
    huart1.Instance->CR1 |= USART_CR1_RXNEIE;
}

static inline uint32_t uart_rx_irq_active(void) {
    return huart1.Instance->CR1 & USART_CR1_RXNEIE;
}

static inline void uart_disable_tx_irq(void) {
    huart1.Instance->CR1 &= ~USART_CR1_TXEIE;
}

static inline void uart_enable_tx_irq(void) {
    huart1.Instance->CR1 |= USART_CR1_TXEIE;
}

static inline uint32_t uart_tx_irq_active(void) {
    return huart1.Instance->CR1 & USART_CR1_TXEIE;
}

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __USART_H__ */

