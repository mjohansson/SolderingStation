/**
  ******************************************************************************
  * @file    buttons.h
  * @brief   This file contains all the function prototypes, data types and
  *          defines for soft-debouncing push-buttons and SW rotary decoding
  ******************************************************************************
  * @author  MJ (e96mjg@gmail.com)
  *
  *
  ******************************************************************************
  */
#ifndef __BUTTONS_H__
#define __BUTTONS_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include <ctype.h>
#include "main.h"

/** Max number of debounced inputs. 4x speed-btns + 2x1 rotary switch (in the
    non-typical case of dual rotary switches)
*/
#define MAX_NBR_DEBOUNCED_BTNS  (4 + 1 + 1)

/* Determine suitable variable storage type for button state flags */
#if (MAX_NBR_DEBOUNCED_BTNS <= 8)
    typedef uint8_t dbtn_map_t;
#elif (MAX_NBR_DEBOUNCED_BTNS <= 16)
    typedef uint16_t dbtn_map_t;
#elif (MAX_NBR_DEBOUNCED_BTNS <= 32)
    typedef uint32_t dbtn_map_t;
#else
    #error "Too many debounced buttons for this impl."
#endif

/** Debounce counters period (number of identical samples before signal be
    considered stable) */
#define DEBOUNCE_TICKS    (8)

/* Storage type for debounce counters */
#if (DEBOUNCE_TICKS < 256U)
typedef uint8_t debreg_t;
#elif (DEBOUNCE_TICKS < 65536U)
typedef uint16_t debreg_t;
#else
typedef uint32_t debreg_t;
#endif

typedef enum _adc_idx {
    MB_HWID = 0,
    FP_HWID = 1,  /* 2 LSBs from outer-panel, 2 MSBs from inner */
    NBR_ADC_HWID_CHNS
} adc_id_chs_t;

/** Button index positions in button-states bitmap */
typedef enum _debbtn_idx {
    POS_FP_BTN_1A = 0,
    POS_FP_BTN_1B = 1,
    POS_FP_BTN_2A = 2,
    POS_FP_BTN_2B = 3,
    POS_ENC_BTN   = 4,
    POS_ENC2_BTN  = 5,
    NBR_DEBOUNCED_PINS
} button_debounce_index_t;

typedef enum _button_mask {
    FP_BTN_1A = 1 << POS_FP_BTN_1A,
    FP_BTN_1B = 1 << POS_FP_BTN_1B,
    FP_BTN_2A = 1 << POS_FP_BTN_2A,
    FP_BTN_2B = 1 << POS_FP_BTN_2B,
    ENC_BTN   = 1 << POS_ENC_BTN,
    ENC2_BTN  = 1 << POS_ENC_BTN,
} button_id_t;


/* State context for frontpanel I/O */
typedef struct frontpanel_io_s {
    /* Analog HWIDs */
    uint16_t   hwid_adc[NBR_ADC_HWID_CHNS];  // latest avg of HWIDs raw ADC samples
    uint8_t    hwid_dec[NBR_ADC_HWID_CHNS];  // decoded 4-bit patterns for the HWIDs

    /* Intermediate data set by ISR for subsequent handler */
    volatile uint8_t    isr_encAB;  // raw samples state of Gray code inputs (ISR)
    volatile dbtn_map_t isr_dbtns; // newly sampled raw, undebounced pin states (ISR)
    volatile uint8_t    pending_periodic_handling_flag;  // Invoke the handler! (ISR)

    /* Digital pins, debouncing */
    debreg_t   dbtn_debcnt[NBR_DEBOUNCED_PINS]; // debounce counters
    dbtn_map_t dbtns_raw; // previous known raw, undebounced pin states
    dbtn_map_t dbtns;     // stable, debounced states of the digital pins

    /* Rotary position soft-decode */
    uint8_t    prev_encAB;  // previous states of Gray code inputs
    int32_t    rotary_pos;  // accumulated signed rotary position
    uint32_t   rotary_errs; // Gray code transition errors (rotary turns too fast)

    // Change indicators, should be cleared by user
    int32_t    previous_rotary_pos; // Last rotary position the user polled
    dbtn_map_t buttons_changed;     // Any buttons changed since last user check

} frontpanel_io_t;



/**
 * This function should be called at regular intervals, e.g. 1ms, to perform
 * digital sampling, debouncing and rotary position (soft) decoding.
 * This function may be called in interrupt context (i.e. from within an ISR).
 *
 * NOTE: this function does only minimum timing-crtitical sampling, and sets a
 *  global update-flag. When the flag is detected in a main program context,
 *  a separate processing function (#buttons_update_states) should be called
 *  to actually update the I/O states and invoke callbacks (if any) etc.
 */
void buttons_timer_tick_ISR(void);

/**
 * Invoke function whenever a global update-flag is set from within the timer-
 * tick ISR.
 * This function should NOT be called in interrupt context, as it might invoke
 * registered callbacks (if any).
 *
 * @param[out] prev_states - optional pointer to bitmap that will indicate the
 *                           previous stable buttons-states
 * @return the current stable button-states bitmap
 */
button_id_t buttons_periodic_debounce_handler(button_id_t *prev_states);

/**
 * Check if the periodic debounce handler should be invoked.
 * Also clears the flag if set.
 */
uint32_t buttons_is_periodic_handler_triggered(void);


/**
 * Get current stable-states and, optionally, the changed-since-last indicators
 * After each call, the "since-last" state change tracking is reset so only
 * new/future changes will be indicated next.
 *
 * @param[out] change_map - optional output param that will indicate which, if any
 *                          buttons have changed since last check
 * @return the current button-states bitmap
 */
button_id_t buttons_check_button_states(button_id_t *change_map);


/**
 * Get rotary position and, optionally, the last polled rotary positon
 *
 * NOTE: Depending on the rotary encoder used (e.g. x1, x2 or x2), the reported
 * position might have to be adjusted by caller.
 * The default decoding tracks x2 counts; so if an x4 encoder is uses the count
 * should be divided by 2. An x2 encoder results in correct counts as-is.
 * If an x1 encoder is uses, the decoding should be adjusted to count on both the
 * valid transition events.
 *
 * @param[out] last_position - the previuos returned position, to track relative
 *                              changes
 * @return the current rotary position
 */
int32_t buttons_check_rotary_position(int32_t *last_position);

uint32_t buttons_get_rotary_errors(void);

uint8_t get_mainboard_hwid(void);

uint8_t get_frontpanel_hwid(void);



#ifdef __cplusplus
}
#endif

#endif /* __BUTTONS_H__ */

/**** END OF FILE ****/
