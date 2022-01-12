/**
  ******************************************************************************
  * File Name          : USART.c
  * Description        : This file provides code for the configuration
  *                      of the USART instances.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include <ctype.h>
#include <stdarg.h>
#include <stdint.h>
#include "usart.h"
#include "util.h"

/* USER CODE BEGIN 0 */

const char g_hex_str[] = "0123456789ABCDEF";
const char g_hex_str_lc[] = "0123456789abcdef";

// Index counter mask for RX buffer */
#define UART_RXBUF_MSK    (UART_RXBUF_SZ - 1UL)

// Index counter mask for TX buffer */
#define UART_TXBUF_MSK    (UART_TXBUF_SZ - 1UL)


#define RINGBUF_RESET(buf)  { buf.rd_idx = buf.wr_idx = 0; }

#define RINGBUF_EMPTY(buf)  ( buf.wr_idx - buf.rd_idx == 0 )

#define RINGBUF_FULL(buf)   ( buf.wr_idx - buf.rd_idx == sizeof(buf.data) )

#define RINGBUF_COUNT(buf)  ( buf.wr_idx - buf.rd_idx )


typedef struct _uart_rxbuf_s {
    uint32_t rd_idx;
    volatile uint32_t wr_idx;
    uint8_t data[UART_RXBUF_SZ];
} uart_rxbuf_t;

typedef struct _uart_txbuf_s {
    volatile uint32_t rd_idx;
    uint32_t wr_idx;
    uint8_t data[UART_TXBUF_SZ];
} uart_txbuf_t;

uart_rxbuf_t uart1_rxbuf;

uart_txbuf_t uart1_txbuf;


#define MAX_STRING_WIDTH    (80u)
#define INVALID_INPUT       (0xFFu)

#define IS_WHITESPACE(rx)    rx = uart_getc();                          \
    while ( (rx == '\r') || (rx == ' ') ||                              \
            (rx == '\t') || (rx == '\b') ) {                            \
        uart_putc(rx);                                                  \
        rx = uart_getc();                                               \
    }

#define UART_SCANF_ECHO_INPUT(rx)                                       \
    if ( (rx == '\n') || (rx == '\r') ) {                               \
        uart_putc('\r');                                                \
        uart_putc('\n');                                                \
    } else {                                                            \
        uart_putc(rx);                                                  \
    }



/* USER CODE END 0 */

UART_HandleTypeDef huart1;

/* USART1 init function */

void MX_USART1_UART_Init(void)
{

  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }

}

void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(uartHandle->Instance==USART1)
  {
  /* USER CODE BEGIN USART1_MspInit 0 */
      RINGBUF_RESET(uart1_rxbuf);
      RINGBUF_RESET(uart1_txbuf);

  /* USER CODE END USART1_MspInit 0 */
    /* USART1 clock enable */
    __HAL_RCC_USART1_CLK_ENABLE();

    __HAL_RCC_GPIOA_CLK_ENABLE();
    /**USART1 GPIO Configuration
    PA9     ------> USART1_TX
    PA10     ------> USART1_RX
    */
    GPIO_InitStruct.Pin = GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GPIO_PIN_10;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_PULLDOWN;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    /* USART1 interrupt Init */
    HAL_NVIC_SetPriority(USART1_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(USART1_IRQn);
  /* USER CODE BEGIN USART1_MspInit 1 */

  /* USER CODE END USART1_MspInit 1 */
  }
}

void HAL_UART_MspDeInit(UART_HandleTypeDef* uartHandle)
{

  if(uartHandle->Instance==USART1)
  {
  /* USER CODE BEGIN USART1_MspDeInit 0 */

      RINGBUF_RESET(uart1_txbuf);
      RINGBUF_RESET(uart1_rxbuf);

  /* USER CODE END USART1_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_USART1_CLK_DISABLE();

    /**USART1 GPIO Configuration
    PA9     ------> USART1_TX
    PA10     ------> USART1_RX
    */
    HAL_GPIO_DeInit(GPIOA, GPIO_PIN_9|GPIO_PIN_10);

    /* USART1 interrupt Deinit */
    HAL_NVIC_DisableIRQ(USART1_IRQn);
  /* USER CODE BEGIN USART1_MspDeInit 1 */

  /* USER CODE END USART1_MspDeInit 1 */
  }
}

/* USER CODE BEGIN 1 */

// Blocking uart tx of single char
void uart_putc(int data)
{
    uart1_txbuf.wr_idx &= UART_TXBUF_MSK;
    /*
    uint32_t nxt_wr = (uart1_txbuf.wr_idx + 1) & UART_TXBUF_MSK;
    // Block while txbuf full
    while (nxt_wr == uart1_txbuf.rd_idx) ;
    uart1_txbuf.data[uart1_txbuf.wr_idx] = (uint8_t)data;
    uart1_txbuf.wr_idx = (uart1_txbuf.wr_idx + 1) & UART_TXBUF_MSK;
    */
    // Block while txbuf full
    while (RINGBUF_FULL(uart1_txbuf)) { }

    // Add to tx queue
    uart1_txbuf.data[uart1_txbuf.wr_idx++] = data;
    uart1_txbuf.wr_idx &= UART_TXBUF_MSK;

    // Enable TXEIE to ensure data will be transmitted
    uart_enable_tx_irq();
}

// Blocking uart tx of a nul-terminated string
void uart_puts(const char* str)
{
    uint8_t ch;
    while ( (ch = (uint8_t)*str++) != '\0') {
        if (ch == '\n') {
            uart_putc('\r');
            uart_putc('\n');
        } else {
            uart_putc(ch);
        }
    }
}

// Blocking uart rx of up-to (max_buffer_size-1) bytes or until carriage return.
// rx-data is 0-terminated
char* uart_gets(char *p_rx_buf, int max_buf_size)
{
    if ( (p_rx_buf != 0) && (max_buf_size > 0) ) {
        char *wr_ptr = p_rx_buf;
        uint32_t count = 0;

        uint8_t ch = uart_getc();
        while ( (ch != '\r') && (count < (max_buf_size-1u)) ) {
            // Echo back the input
            uart_putc(ch);

            *wr_ptr++ = ch;
            count++;
            ch = uart_getc();
        }

        // terminate str
        *wr_ptr = 0;
    }

    return p_rx_buf;
}

// Blocking uart send data
void uart_send(const uint8_t *data, uint32_t length)
{
    while (length--) {
        uart_putc((char)*data++);
    }
}

// Like send, but with "\r\n" expansions
uint32_t uart_write(const char *buf, uint32_t len)
{
    uint32_t idx;

    for (idx = 0; idx < len; idx++) {
        if (buf[idx] == '\n') {
            uart_putc('\r');
        }

        uart_putc(buf[idx]);
    }

    // number of characters written
    return idx;
}


// Blocking uart rx of a single char
uint8_t uart_getc(void)
{
    uint8_t data;

    uart1_rxbuf.rd_idx &= UART_RXBUF_MSK;

    // Enable RXNEIE to ensure data will be received
    uart_enable_rx_irq();

    // Block while rxbuf empty
    while (RINGBUF_EMPTY(uart1_rxbuf)) { }

    // Get first char from rx queue
    data = uart1_rxbuf.data[uart1_rxbuf.rd_idx++];
    uart1_rxbuf.rd_idx &= UART_RXBUF_MSK;
    return data;
}

// Check TX queue length
uint32_t uart_tx_queue(void)
{
    uint32_t tx_len = RINGBUF_COUNT(uart1_txbuf);
    return tx_len;
}

// Check RX queue length
uint32_t uart_rx_queue(void)
{
    uint32_t rx_len = RINGBUF_COUNT(uart1_rxbuf);
    return rx_len;
}

/**
* @brief This function handles USART1 global interrupt.
*/
void USART1_IRQHandler(void)
{
    //    HAL_UART_IRQHandler(&huart1); -- not used

    uint32_t stat = huart1.Instance->SR;

    if ( uart_tx_irq_active() && (stat & UART_FLAG_TXE) ) {
        // OK to transmit another byte
        uart1_txbuf.rd_idx &= UART_TXBUF_MSK;
        uint8_t ch = uart1_txbuf.data[uart1_txbuf.rd_idx++];
        huart1.Instance->DR = ch;
        uart1_txbuf.rd_idx &= UART_TXBUF_MSK;
        if ( RINGBUF_EMPTY(uart1_txbuf) ) {
            // Last byte sent, disable further TXE irqs
            uart_disable_tx_irq();  // Clear TXEIE
//            huart1.Instance->CR1 |= USART_CR1_TCIE; // TBD (if OnComplete CB etc)
        }
    }

    if ( uart_rx_irq_active() && (stat & UART_FLAG_RXNE) ) {
        // Get and store (if possible) received byte in rx-buffer
        uint8_t ch = huart1.Instance->DR;
        uart1_rxbuf.wr_idx &= UART_RXBUF_MSK;
        if ( !RINGBUF_FULL(uart1_rxbuf) ) {
            uart1_rxbuf.data[uart1_rxbuf.wr_idx++] = ch;
            uart1_rxbuf.wr_idx &= UART_RXBUF_MSK;
        } else {
            // TBD: Set overflow flag
        }
    }

// TBD!
//    if (stat & UART_FLAG_TX) {
//        // OnUartTxCompleteCB(); -- ?
//    }

}

void uart_print_hex_byte(uint8_t byte)
{
    uart_putc(g_hex_str[(byte >> 4 & 0x0F)]);
    uart_putc(g_hex_str[byte & 0x0F]);
}

void uart_print_hex_word(uint32_t word)
{
    for (int i = 7; i >= 0; i--) {
        uart_putc(g_hex_str[(word >> 28 & 0x0F)]);
        word <<= 4;
    }
}

void uart_put_nums(int value)
{
    char buf[12];

    // (string converted MSB to LSB with leading sign & NUL-termination)
    util_int_to_ascii(value, &buf[0], sizeof(buf), 10);
    uart_puts(buf);
}

void uart_put_num(uint32_t value)
{
    char buf[12];

    // (string converted MSB to LSB unsigned + NUL-termination)
    util_uint_to_ascii(value, &buf[0], sizeof(buf), 10);
    uart_puts(buf);
}

void uart_put_hex(uint32_t value)
{
    char buf[12];

    util_uint_to_ascii(value, &buf[0], sizeof(buf), 16);

    uart_putc('0');
    uart_putc('x');
    uart_puts(buf);
}

// Read UART into buffer until space or carriage return.
void uart_stdio_read(uint8_t *rxBuff, uint8_t rxByte)
{
    uint32_t input_count = 0u;

    while ( (rxByte != '\r') && (rxByte != ' ') ) {
        uart_putc(rxByte);  // echo

        // Handle backspace to allow user to edit the input
        if ( ('\b' == rxByte) && (input_count > 0) ) {
            rxBuff--;
            input_count--;
        } else {
            *rxBuff++ = rxByte;
            input_count++;
        }
        rxByte = uart_getc();
    }

    // Add the delimiting character at the end of the buffer
    *rxBuff = rxByte;
}

int uart_get_nums(void)
{
    uint8_t ch;
    int value = 0;
    int sign = 1;

    // skip leading spaces
    do {
        ch = uart_getc();
        uart_putc(ch);
    } while (isspace(ch));

    // check sign
    if (ch == '-') {
        sign = -1;
        ch = uart_getc();
        uart_putc(ch);
    }

    // convert digits
    while (isdigit(ch)) {
        value = value * 10 + (ch - '0');

        ch = uart_getc();
        uart_putc(ch);
    }

    value = value * sign;

    return value;
}

uint32_t uart_get_hex(void)
{
    uint8_t ch;
    uint32_t value = 0;
    int byte_cnt = 0;

    for (int i = 0; i < 2; i++) {

        do {
            ch = uart_getc();
        } while (isspace(ch));

        if (ch == '\r') break;

        if (isxdigit(ch)) {
            uart_putc(ch);
            ch = toupper(ch);
            if (ch <= '9') {
                value = value * 16 + (ch - '0');
            } else {
                value = value * 16 + (ch - 0x37);
            }
            byte_cnt++;
        }

        if ( (ch == 'x') || (ch == 'X') ) {
            uart_putc(ch);
            value = 0;
            break;
        }
    }

    if (value == 0) {
        byte_cnt = 0;
    }

    do {
        ch = uart_getc();

        if (ch == '\r') break;

        if (isxdigit(ch)) {
            uart_putc(ch);
            ch = toupper(ch);
            if (ch < '9') {
                value = value * 16 + (ch - '0');
            } else {
                value = value * 16 + (ch - 0x37);
            }
            byte_cnt++;
        }

    } while (byte_cnt < 8);

    return value;
}

/*
 * A simple UART based printf function supporting %c, %d, %p, %s, %u, %x, and %X.
 *
 * This function is very similar to the C library fprintf() function.
 * All of its output will be sent to the UART.  Only the following formatting
 * characters are supported:
 *
 * - %c to print a character
 * - %d to print a decimal value
 * - %s to print a string
 * - %u to print an unsigned decimal value
 * - %x to print a hexadecimal value using lower case letters
 * - %X to print a hexadecimal value using upper case letters
 * - %p to print a pointer as a hexadecimal value
 * - %% to print out a '%' character
 *
 * For %s, %d, %u, %p, %x, and %X, an optional number may reside
 * between the '%' and the format character, which specifies the minimum number
 * of characters to use for that value; if preceded by a 0 then the extra
 * characters will be filled with zeros instead of spaces.  For example,
 * "%8d" will use eight characters to print the decimal value with spaces
 * padding; "%08d" will use eight characters as well but with zeros padding.
 *
 */
void uart_printf(const char *pcString, ...)
{
    unsigned int idx, pos, count, base, neg;
    char *pcStr, pcBuf[16], cFill;
    const char *pcHex = g_hex_str;
    va_list vaArgP;
    int value;

    /* Start the varargs processing. */
    va_start(vaArgP, pcString);

    /* Loop while there are more characters in the string. */
    while (*pcString) {
        /* Find the first non-% character, or the end of the string. */
        for(idx = 0; (pcString[idx] != '%') && (pcString[idx] != '\0'); idx++) {
        }

        /* Write this portion of the string. */
        uart_write(pcString, idx);

        /* Skip the portion of the string that was written. */
        pcString += idx;

        /* See if the next character is a %. */
        if (*pcString == '%') {
            /* Skip the %. */
            pcString++;

            /* Eat any %z and only care about the following d/u. */
            if (*pcString == 'z')
                pcString++;

            /*
            ** Set the digit count to zero, and the fill character to space
            ** (i.e. to the defaults).
            */
            count = 0;
            cFill = ' ';

again:
            /* Determine how to handle the next character. */
            switch(*pcString++)
            {
                /* Handle the digit characters. */
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                {
                    /*
                    ** If this is a zero, and it is the first digit, then the
                    ** fill character is a zero instead of a space.
                    */
                    if ( (pcString[-1] == '0') && (count == 0) ) {
                        cFill = '0';
                    }

                    /* Update the digit count. */
                    count *= 10;
                    count += pcString[-1] - '0';

                    /* Get the next character. */
                    goto again;
                }

                /* Handle the %c command. */
                case 'c':
                {
                    /* Get the value from the varargs. */
                    value = va_arg(vaArgP, unsigned int);

                    /* Print out the character. */
                    uart_write((char *)&value, 1);

                    /* This command has been handled. */
                    break;
                }

                /* Handle the %d/%i command. */
                case 'd':
                case 'i':
                {
                    /* Get the value from the varargs. */
                    value = va_arg(vaArgP, unsigned int);

                    /* Reset the buffer position. */
                    pos = 0;

                    /*
                    ** If the value is negative, make it positive and indicate
                    ** that a minus sign is needed.
                    */
                    if ((int)value < 0) {
                        /* Make the value positive. */
                        value = -(int)value;

                        /* Indicate that the value is negative. */
                        neg = 1;
                    } else {
                        /* Indicate that the value is positive so that a minus
                         * sign isn't inserted. */
                        neg = 0;
                    }

                    /* Set the base to 10. */
                    base = 10;

                    /* Convert the value to ASCII. */
                    goto convert;
                }

                /* Handle the %s command. */
                case 's':
                {
                    /* Get the string pointer from the varargs. */
                    pcStr = va_arg(vaArgP, char *);

                    /* Determine the length of the string. */
                    for(idx = 0; pcStr[idx] != '\0'; idx++) {
                    }

                    /* Write the string. */
                    uart_write(pcStr, idx);

                    /* Write any required padding spaces */
                    if (count > idx) {
                        count -= idx;
                        while (count--) {
                            uart_putc(' ');
                        }
                    }
                    /* This command has been handled. */
                    break;
                }

                /* Handle the %u command. */
                case 'u':
                {
                    /* Get the value from the varargs. */
                    value = va_arg(vaArgP, unsigned int);

                    /* Reset the buffer position. */
                    pos = 0;

                    /* Set the base to 10. */
                    base = 10;

                    /*
                    ** Indicate that the value is positive so that a minus sign
                    ** isn't inserted.
                    */
                    neg = 0;

                    /* Convert the value to ASCII. */
                    goto convert;
                }

                /*
                ** Handle the %x and %X commands.  Note that they are treated
                ** identically; i.e. %X will use lower case letters for a-f
                ** instead of the upper case letters is should use.  We also
                ** alias %p to %x.
                */
                case 'X':
                case 'p':
                    pcHex = g_hex_str;
                    goto hex_set;
                case 'x':
                    pcHex = g_hex_str_lc;
                {
hex_set:
                    /* Get the value from the varargs. */
                    value = va_arg(vaArgP, unsigned int);

                    /* Reset the buffer position. */
                    pos = 0;

                    /* Set the base to 16. */
                    base = 16;

                    /*
                    ** Indicate that the value is positive so that a minus sign
                    ** isn't inserted.
                    */
                    neg = 0;

                    /*
                    ** Determine the number of digits in the string version of
                    ** the value.
                    */
convert:
                    for (idx = 1;
                         (((idx * base) <= value) &&
                          (((idx * base) / base) == idx));
                         idx *= base, count--) {
                    }

                    /*
                    ** If the value is negative, reduce the count of padding
                    ** characters needed.
                    */
                    if (neg) {
                        count--;
                    }

                    /*
                    ** If the value is negative and the value is padded with
                    ** zeros, then place the minus sign before the padding.
                    */
                    if (neg && (cFill == '0') ) {
                        /* Place the minus sign in the output buffer. */
                        pcBuf[pos++] = '-';

                        /*
                        ** The minus sign has been placed, so turn off the
                        ** negative flag.
                        */
                        neg = 0;
                    }

                    /*
                    ** Provide additional padding at the beginning of the
                    ** string conversion if needed.
                    */
                    if ( (count > 1) && (count < 16) ) {
                        for(count--; count; count--) {
                            pcBuf[pos++] = cFill;
                        }
                    }

                    /*
                    ** If the value is negative, then place the minus sign
                    ** before the number.
                    */
                    if (neg) {
                        /* Place the minus sign in the output buffer. */
                        pcBuf[pos++] = '-';
                    }

                    /* Convert the value into a string. */
                    for (; idx; idx /= base) {
                        pcBuf[pos++] = pcHex[(value / idx) % base];
                    }

                    /* Write the string. */
                    uart_write(pcBuf, pos);

                    /* This command has been handled. */
                    break;
                }

#if 0

                /* Handle the %f command. */
                case 'f':
                {
                    /* %f is actually double */
                    double dvalue = va_arg(vaArgP, double);

                    /* count holds before-decimal-point format */

                    /* yay for recursion! */
                    uart_printf("%d.%d",
                                (int)dvalue,
                                (int)(1000*(dvalue-(int)dvalue + 0.5f/1000)));

                    /* consume the 'f' */
                    pcString++;

                    /* This command has been handled. */
                    break;
                }
#endif
                /* Handle the %% command. */
                case '%':
                {
                    /* Simply write a single %. */
                    uart_putc('%');

                    /* This command has been handled. */
                    break;
                }

                /* Handle all other commands. */
                default:
                {
                    /* Indicate an error. */
                    uart_write((const char *)"ERROR", 5);

                    /* This command has been handled. */
                    break;
                }
            }
        }
    }

    /* End the varargs processing. */
    va_end(vaArgP);
}

/*
 * A simple UART based scanf function supporting %c, %d, %s, %u, %x, %X, and %p.
 *
 * This function is very similar to the C library vscanf() function.
 * All of its input will be read from the UART console. The input characters
 * are stored into the locations pointed by the pointer arguments.
 * The destination address pointed to by the pointers is not validated.
 * Only the following formatting characters are supported:
 *
 * - %c to read a character
 * - %d to read a integer value
 * - %s to read a string
 * - %u to read an unsigned decimal value
 * - %x or %X to read a hexadecimal value
 * - %p to read a pointer as a hexadecimal value
 *
 * Note: The width option in the format specifier is not supported. So this
 *       function will take input as much as supported by the data type. The
 *       size specification in the format specifier will be treated as invalid
 *       specifier.
 *
 * Return: The number of valid input values successfully read from the uart.
 *         A negative value on error.
 *
 */
int uart_scanf(const char *format, va_list vaArg)
{
    unsigned char rxByte, rxBuffer[MAX_STRING_WIDTH];
    unsigned int width = MAX_STRING_WIDTH, byteCount = 0u;
    int sign = 1, inputMatch = 0;
    int *value;
    unsigned int *num;
    char *dst;

    /* Loop while there are more characters in the string. */
    while (*format != '\0') {
        /* Find the first % character */
        if ( (*format++ == '%') && (inputMatch >= 0) ) {
            switch(*format++)
            {
                /* Handle the %c command. */
                case 'c':
                    /* Get the address of variable from varargs */
                    dst = va_arg(vaArg, char *);

                    rxByte = uart_getc();
                    uart_putc(rxByte);
                    *dst = rxByte;
                    /*
                    ** Increment the count for input values successfully
                    ** read and matched.
                    */
                    inputMatch++;

                    /*
                    ** Wait until the byte entered is new line or carriage
                    ** return or space
                    */
                    while ( (rxByte != '\n') && (rxByte != '\r') && (rxByte != ' ') ) {
                        rxByte = uart_getc();
                    }
                    UART_SCANF_ECHO_INPUT(rxByte);
                    break;

                /* Handle the %d command. */
                case 'd':
                    /* Get the address of variable from argument */
                    value = va_arg(vaArg, int *);
                    *value = 0;

                    /*
                    ** Increment the count for input values successfully
                    ** read and matched.
                    */
                    inputMatch++;

                    /*
                    ** Continuously loop until user enters a non
                    ** white-space character
                    */
                    IS_WHITESPACE(rxByte);

                    /*
                    ** Continuously read input values from UART console
                    ** and update the buffer until user enters a delimiting
                    ** character.
                    */
                    uart_stdio_read(rxBuffer, rxByte);

                    rxByte = rxBuffer[byteCount];

                    /* Account for negative numbers. */
                    if ('-' == rxByte) {
                        sign = -1;
                        byteCount++;
                        rxByte = rxBuffer[byteCount];
                    }
                    /*
                    ** Check whether the byte entered is not either the carriage
                    ** return or space or new line, if yes then break from the
                    ** loop.
                    */
                    while ( (rxByte != '\n') && (rxByte != '\r') && (rxByte != ' ') ) {
                        /* Convert the ASCII value to decimal number */
                        rxByte = util_ASCIIToDigit(rxByte, 10u);
                        /*
                        ** Check for invalid input characters if true then
                        ** then break from the loop.
                        */
                        if (INVALID_INPUT == rxByte) {
                            inputMatch = -1;
                            break;
                        } else {
                            *value = ((*value) * 10u) + rxByte;
                        }
                        byteCount++;
                        rxByte = rxBuffer[byteCount];
                    }

                    /* Add the sign value to the number */
                    *value = *(value) * sign;
                    byteCount = 0u;
                    UART_SCANF_ECHO_INPUT(rxByte);
                    break;

                /* Handle the %x,%X and %p command. */
                case 'x':
                case 'X':
                case 'p':
                    /* Get the address of variable from argument */
                    num = va_arg(vaArg, unsigned int*);
                    *num = 0u;

                    /*
                    ** Increment the count for input values successfully
                    ** read and matched.
                    */
                    inputMatch++;

                    /* Continuously loop until user enters a non
                    ** white-space character.
                    */
                    IS_WHITESPACE(rxByte)

                    /*
                    ** Continuously read input values from UART console
                    ** and update the buffer until user enters a delimiting
                    ** character.
                    */
                    uart_stdio_read(rxBuffer, rxByte);

                    rxByte = rxBuffer[byteCount];
                    /*
                    ** Check whether the byte entered is not either the carriage
                    ** return or space or new line, if yes then break from the
                    ** loop.
                    */
                    while ( (rxByte != '\n') && (rxByte != '\r') && (rxByte != ' ') ) {
                        /*
                        ** Ignore the first 2 characters from the
                        ** received input if they are 0x or 0X.
                        */
                        if ( (byteCount < 2) && (('0' == rxByte) ||
                                                 ('x' == rxByte) || ('X' == rxByte)) ) {
                            byteCount++;
                            rxByte = rxBuffer[byteCount];
                            continue;
                        }
                        /* Convert the ASCII value to hexadecimal number */
                        rxByte = util_ASCIIToDigit(rxByte, 16u);

                        /* Check for invalid hexadecimal characters */
                        if (INVALID_INPUT == rxByte) {
                            inputMatch = -1;
                            break;
                        } else {
                            *num = ((*num) * 16u) + rxByte;
                        }
                        byteCount++;
                        rxByte = rxBuffer[byteCount];
                    }
                    byteCount = 0u;
                    UART_SCANF_ECHO_INPUT(rxByte);
                    break;

                /* Handle the %s command. */
                case 's':
                    /* Get the address of variable from the argument*/
                    dst = va_arg(vaArg, char*);

                    /*
                    ** Increment the count for input values successfully
                    ** read and matched.
                    */
                    inputMatch++;

                    /*
                    ** Continuously loop till user enters a non
                    ** white-space character
                    */
                    IS_WHITESPACE(rxByte);

                     /* Read the characters one at a time from UART console */
                    while ( (rxByte != '\n') && (rxByte != '\r') && (rxByte != ' ') && (width--) ) {
                        uart_putc(rxByte);

                        /*Account for backspace and decrement the pointer */
                        if ('\b' == rxByte) {
                            dst--;
                            width++;
                        } else {
                            *dst++ = (char) rxByte;
                        }
                        rxByte = uart_getc();
                    }
                    *dst = '\0';
                    UART_SCANF_ECHO_INPUT(rxByte);
                    break;

                /* Handles %u command */
                case 'u':
                    /* Get the address of variable from varargs */
                    num = va_arg(vaArg, unsigned int*);
                    *num = 0u;
                    inputMatch++;
                    /*
                    ** Continuously loop until user enters a non
                    ** white-space character
                    */
                    IS_WHITESPACE(rxByte);

                    /*
                    ** Continuously read input values from UART console
                    ** and update the buffer until user enters a delimiting
                    ** character.
                    */
                    uart_stdio_read(rxBuffer, rxByte);

                    rxByte = rxBuffer[byteCount];
                    while ( (rxByte != '\n') && (rxByte != '\r') && (rxByte != ' ') ) {
                        /* Convert the ASCII value to decimal number */
                        rxByte = util_ASCIIToDigit(rxByte, 10u);

                        /*
                        ** Check for invalid input characters if true then
                        ** then break from the loop.
                        */
                        if (INVALID_INPUT == rxByte) {
                            inputMatch = -1;
                            break;
                        } else {
                            *num = ((*num) * 10u) + rxByte;
                        }
                        byteCount++;
                        rxByte = rxBuffer[byteCount];
                    }
                    byteCount = 0u;
                    UART_SCANF_ECHO_INPUT(rxByte);
                    break;

                default:
                    uart_puts("Format specifier is not supported\n");
                    inputMatch = -1;
                    break;
            }
        }
    }
    /* Check for invalid format specifiers */
    if (0 == inputMatch) {
        uart_puts("Invalid format specifiers\n");
        inputMatch = -1;
    }

    return inputMatch;
}


/* USER CODE END 1 */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
