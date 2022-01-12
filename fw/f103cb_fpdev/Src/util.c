/** @file
 * Implementation of the Miscellaneous Utility Functions.
 *
 *
 * @author Mathias Johansson
 *
 *
 */


////////////////////////////////////////////////////////////////////////////////
/**
 * @name Includes
 */
//@{
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include "usart.h"
#include "util.h"

//@} End of Includes



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Local defines
 */
//@{

/** Reciprocal multiplication constant for 8-bit N/3 (shift count: 9) */
#define UTIL_RECIP_8_DIV3 (uint8_t)(0xAB)


/** Reciprocal multiplication constant for 16-bit N/3 (shift count: 17) */
#define UTIL_RECIP_16_DIV3  (uint16_t)(0xAAAB)


/** Reciprocal multiplication constant for 8-bit N/5 (shift count: 10) */
#define UTIL_RECIP_8_DIV5 (uint8_t)(0xCD)


/** Reciprocal multiplication constant for 16-bit N/5 (shift count: 18) */
#define UTIL_RECIP_16_DIV5  (uint16_t)(0xCCCD)


//@} End of Local defines



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Typedefs
 * Local typedefs related to this functionality.
 */
//@{


//@} End of Typedefs



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Local data
 */
//@{

static const char digits[] = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

//@} End of Local data



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Global data
 */
//@{


//@} End of Global data



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Forward declarations
 */
//@{


//@} End of Forward declarations



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Interrupt handlers
 */
//@{


//@} End of Interrupt handlers



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Implemented public methods
 */
//@{


/**
 * Convert an integer to BCD, right justified.
 *
 */
uint8_t* util_int_to_bcd(int32_t value, uint8_t *buffer, size_t buffsz, uint8_t padding)
{
    div_t t;
    int32_t temp;
    uint8_t *ptr;
    int sign = padding;

    if (buffer == NULL || buffsz < 1) {
        return buffer;
    }

    memset(buffer, padding, buffsz);
    if (value < 0) {
        sign = '-';
        value = -value;
    }

    temp = value;
    ptr = buffer + buffsz - 1;
    while (temp > 0 && ptr >= buffer) {
        t = div(temp, 10);
        *ptr-- = (uint8_t)t.rem;
        temp = t.quot;
    }

    if (ptr > buffer) {
        buffer[0] = (uint8_t)sign;
    }

    return buffer;
}


char* util_int_to_ascii(int32_t value, char *buffer, size_t buffsz, int32_t radix)
{
    div_t t;
    int32_t temp, cnt, sign;
    char *ptr, *ptr1;

    // sanity checks
    if (buffer == NULL || buffsz == 0) {
        return NULL;
    }
    if (radix < 2 || radix > 36) {
        *buffer = '\0';
        return NULL;
    }

    // convert
    if ((int)value < 0 && radix == 10) {
        sign = 1;
    } else {
        sign = 0;
    }
    ptr = ptr1 = buffer;
    cnt = buffsz - 1;
    temp = value;
    do {
        t = div(temp, radix);
        *ptr++ = digits[35 + t.rem];
        temp = t.quot;
    } while ( (temp != 0) && (--cnt > 0) );

    // sign and terminator
    if ( sign && (cnt > 0) ) {
        *ptr++ = '-';
    }
    *ptr-- = '\0';

    // reverse result
    while (ptr1 < ptr) {
        char ch = *ptr;
        *ptr-- = *ptr1;
        *ptr1++ = ch;
    }

    return buffer;
}

char* util_uint_to_ascii(uint32_t value, char *buffer, size_t buffsz, int32_t radix)
{
    int32_t i, j, cnt;

    // sanity checks
    if (buffer == NULL || buffsz == 0) {
        return NULL;
    }
    if (radix < 2 || radix > 36) {
        *buffer = '\0';
        return NULL;
    }

    cnt = buffsz - 1;
    i = 0;
    do {
        uint32_t rem = value % radix;
        buffer[i++] = digits[35 + rem];
        value = value / radix;
    } while ( (value != 0) && (--cnt > 0) );
    buffer[i--] = '\0';

    // reverse result
    for (j = 0; j < i; j++, i--) {
        char ch = buffer[j];
        buffer[j] = buffer[i];
        buffer[i] = ch;
    }

    return buffer;
}

uint8_t util_ASCIIToDigit(uint8_t byte, uint32_t base)
{
    uint8_t retVal = 0;

    if ( (base != 10u) && (base != 16u) ) {
        ;
    }
    /* For numbers from 0x0 to 0x9.*/
    else if ( (byte >= '0') && (byte <= '9')) {
        retVal = byte - '0';
        return retVal;
    }
    /* For alphabets from A to F.*/
    else if ( (base == 16u) && (byte >= 'A') && (byte <= 'F')) {
        retVal = byte - 0x37; // 55 = ('0' + ('A' - '9' - 1))
        return retVal;
    }
    /* For alphabets from a to f.*/
    else if ( (base == 16u) && (byte >= 'a') && (byte <= 'f')) {
        retVal = byte - 0x57; // 87 = ('0' + ('a' - '9' - 1))
        return retVal;
    }

    return 0xFF;
}

uint8_t util_DigitToASCII(uint8_t byte, uint32_t base)
{
    uint8_t retVal = 0;
    uint8_t nibble = byte & 0x0F;

    if ( (base != 10u) && (base != 16u) ) {
        ;
    }
    /* For numbers from 0x0 to 0x9.*/
    else if (nibble <= 9) {
        retVal = nibble + '0';
        return retVal;
    }
    /* For alphabets from A to F.*/
    else if ( (base == 16u) && (nibble >= 10) && (nibble <= 15)) {
        retVal = nibble + 0x37; // 55 = ('0' + ('A' - '9' - 1))
        return retVal;
    }

    return 0xFF;
}



util_days_and_hours_t util_time_to_days_and_hours(uint16_t elapsed_time)
{
    util_days_and_hours_t result;
    result.days = elapsed_time / 24U;
    result.hours = elapsed_time % 24U;
    return result;
}


//@} End of Implemented public methods



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Implemented callback functions
 * These methods are exported to other modules, but are callback handlers, not
 * intended to be invoked under any other circumstanses than the CB notification.
 */
//@{

//@} End of Implemented callback functions



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Implemented private methods
 */
//@{

//@} End of Implemented private methods
