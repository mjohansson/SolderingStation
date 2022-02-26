/** @file
 * Miscellaneous Utility Functions
 *
 * Description
 *
 * DTW cycle-counter for e.g. microsecond delays inspired by (among others):
 *  https://deepbluembedded.com/stm32-delay-microsecond-millisecond-utility-dwt-delay-timer-delay
 *
 * @author Mathias Johansson
 *
 *
 */

#ifndef __UTIL_H__
#define __UTIL_H__


////////////////////////////////////////////////////////////////////////////////
/**
 * @name Includes
 */
//@{

// CMSIS
#include "cmsis_compiler.h"
#include "core_cm3.h"

// HAL
#include "stm32f1xx_hal.h"

//@} End of Includes



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Defines
 * Public defines related to this functionality.
 */
//@{

#ifndef UTIL_NUM_ELEM
#define UTIL_NUM_ELEM(a)  (sizeof(a)/sizeof(a[0]))
#endif

//@} End of Defines



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Typedefs
 * Public typedefs related to this functionality.
 */
//@{


/**
 * An enumeration of optional leading-characters used in integer to BCD
 * conversions. The default is to use leading zeros.
 */
typedef enum
{
  UTIL_LEADING_SPACE = 0x80, /**< Use leading white-spaces. */
//  UTIL_LEADING_MINUS = 0x40, /**< Use leading dash sign. */
//  UTIL_LEADING_UNDERSCORE,
} eUtilLeadingChar;


/**
 * Structure for holding the number of days and hours, or alternatively quotient
 * and remainder.
 */
typedef union
{
  struct
  {
    uint16_t days;    /**< Number of days in an elapsed time interval. */
    uint16_t hours;   /**< Number of additional hours in an elapsed time. */
  };
  struct
  {
    uint16_t quot;    /**< The quotient */
    uint16_t rem;     /**< The remainder.*/
  };
} util_days_and_hours_t, util_div_t;

//@} End of Typedefs



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Global data
 */
//@{

extern const char hex_str[];

//@} End of Global data



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Public methods
 */
//@{

/** Setup & enable the clk-cycle counter in Core debug DWT block as a free-running
    high-res counter for simple us-delays and/or performance profiling.
*/
int util_dwt_cycle_counter_init(void);

/** Read current cycle counter value */
__STATIC_INLINE uint32_t util_dwt_get_cycle_count(void)
{
    return DWT->CYCCNT;
}

__STATIC_INLINE void util_dwt_cycle_counter_reset(void)
{
    DWT->CYCCNT = 0;
}

__STATIC_INLINE void util_dwt_cycle_counter_disable(void)
{
    DWT->CTRL &= ~DWT_CTRL_CYCCNTENA_Msk;
}

__STATIC_INLINE void util_dwt_cycle_counter_enable(void)
{
    DWT->CTRL |=  DWT_CTRL_CYCCNTENA_Msk;
}

/** Simple busy-wait for micro-seconds delay, using the Coredebug DWT counter */
__STATIC_INLINE void util_dwt_delay_us(volatile uint32_t delay_us)
{
    uint32_t start = DWT->CYCCNT;
    uint32_t wait_cycles = delay_us * (HAL_RCC_GetHCLKFreq() / 1000000UL);
    while ((DWT->CYCCNT - start) < wait_cycles) { };
}


/**
 * Convert an integer to BCD.
 *
 * This function converts an integer to a two-digit (range 0-99) or three-digit
 * (range 0-999) Binary Coded Decimal string. The result is not nul-terminated
 * by this function. For values with less than #max_digits significant digits,
 * the leading character or characters can be selected (e.g. leading zeros or
 * leading blank-space).
 *
 * @param[in] value the integer value to convert.
 * @param[in] padding what character to use for leading space paddning.
 * @param[in] max_digits the maximum number of digits that can be converted in
 *                       the result buffer. Should be either 2 or normally 3.
 * @param[in,out] buffer a pointer to a buffer capable of holding at least
 *                      max_digits bytes of the result.
 */
uint8_t* util_int_to_bcd(int32_t value, uint8_t *buffer, size_t buffsz, uint8_t padding);


/**
 * Convert an integer to ascii string in any base from 2 to 36, inclusive.
 *
 * @param[in] value the integer to convert.
 * @param[in, out] buffer storage space for the result string.
 * @param[in] buffsz maximum storage available in buffer.
 * @param[in] radix the number base for the conversion. Valid range is 2 to 36.
 * @return The buffer with the converted string, or NULL if failure.
 */
char* util_int_to_ascii(int32_t value, char *buffer, size_t buffsz, int32_t radix);


/**
 * Convert an unsigned integer to ascii string in any base from 2 to 36 inclusive.
 *
 */
char* util_uint_to_ascii(uint32_t value, char *buffer, size_t buffsz, int32_t radix);

uint8_t util_ASCIIToDigit(uint8_t byte, uint32_t base);

uint8_t util_DigitToASCII(uint8_t byte, uint32_t base);


/**
 * Converts elapsed time to days and hours.
 *
 * This function converts an arbitrary elapsed time, in hours, to the number of
 * whole days and remaining hours.
 *
 * @param[in] elapsed_time the elapsed time in hours
 *
 * @return the number of whole days and remaining hours in the elapsed time
 *          interval.
 */
util_days_and_hours_t util_time_to_days_and_hours(uint16_t elapsed_time);



//@} End of Public methods



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Implemented callback functions
 * These methods are exported to other modules, but are callback handlers, not
 * intended to be invoked under any other circumstanses than the CB notification.
 */
//@{

//@} End of Implemented callback functions

#endif  // __UTIL_H__
