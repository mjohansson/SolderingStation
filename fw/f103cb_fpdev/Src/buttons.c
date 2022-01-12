/**
  ******************************************************************************
  * @file    buttons.c
  * @brief   This file provides code for pushbuttons, rotary encoders & HWIDs
  ******************************************************************************
  * @author  MJ (e96mjg@gmail.com)
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "buttons.h"
#include "usart.h"


#define BOARD_FPDEV (1)


/* Module interal data */
static frontpanel_io_t io;


/* Public module data */
volatile uint8_t g_fpio_update_flag;



static uint32_t sample_fpdev_buttons_with_pinout_hack(void)
{
    /* SolderStation front-panel r1a had a case of reversed SpeedButtons pin-header
       when used with the intended 'straight' bridge-boards.
       So instead of each SpeedButton's COMMON being hardwired to GND, one of the
       button-pins is GND:ed while the COM pin is connected to an MCU GPIO.

       Ordinarily we could just simply read the two GPIO (inputs, PU), and if any
       was '0', the corresponding button was pressed.

       To work-around the mirrored pinheader, we can do this instead:
       1. Both GPIOs (COM and BTN_A in this case) as inputs, P.U. enabled
       2. Read inputs.
       a) If both are '1', either BTN_A (undetectable) or none are pressed
       b) If COM is '0', BTN_B (which is gnd:ed) was pressed.
       c) If both COM and BTN_A are '0', then both BTN_A and BTN_B are pressed
       3. Remux COM-pin to output, drive hard '0'. Sample BTN_A.
       a) If BTN_A is '0', BTN_A is pressed. BTN_B may or may not be pressed; we'll
           get that next time.
    */

    uint32_t temp;
    uint32_t result = 0;

    // Collect the various bits n' pieces scattered all over the ports....
    // FP_Dev F103 pinout : ( BOARD_FPDEV == 1)
    // PA11 = FP_BTN_1Bn
    // PA12 = FP_BTN_1An
    // PB13 = FP_BTN_2An
    // PB14 = FP_BTN_2Bn
    //

    GPIO_InitTypeDef GPIO_InitStruct = {0};

    // BTN_1 : Sample port pins (Assume FP_BTN_1An and FP_BTN_1Bn are on same bank)
    temp = FP_BTN_1An_GPIO_Port->IDR & (FP_BTN_1An_Pin | FP_BTN_1Bn_Pin);
    if (temp == 0) {
        // COM = 0, A = 0 -> Both 'A' and 'B' must be pressed!
        result = FP_BTN_1A | FP_BTN_1B;
    } else if (temp == FP_BTN_1An_Pin) {
        // COM = 0, A = 1 -> Btn B is pressed!
        result = FP_BTN_1B;
    }

    // Remux BTN_B/'COM' as output, drive low
    GPIO_InitStruct.Pin = FP_BTN_1Bn_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_MEDIUM;
    HAL_GPIO_Init(FP_BTN_1Bn_GPIO_Port, &GPIO_InitStruct);
    HAL_GPIO_WritePin(FP_BTN_1Bn_GPIO_Port, FP_BTN_1Bn_Pin, GPIO_PIN_RESET);

    temp = FP_BTN_1An_GPIO_Port->IDR & (FP_BTN_1An_Pin);
    if (temp == 0) {
        // Btn A is pressed!
        result |= FP_BTN_1A;
    }
    // Remux both btn A & B as inputs
    GPIO_InitStruct.Pin = FP_BTN_1An_Pin | FP_BTN_1Bn_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    HAL_GPIO_Init(FP_BTN_1Bn_GPIO_Port, &GPIO_InitStruct);


    // BTN_2 : Sample port pins (Assume FP_BTN_2An and FP_BTN_2Bn are on same bank)
    temp = FP_BTN_2An_GPIO_Port->IDR & (FP_BTN_2An_Pin | FP_BTN_2Bn_Pin);
    if (temp == 0) {
        // Both 'A' and 'B' must be pressed!
        result |= FP_BTN_2A | FP_BTN_2B;
    } else if (temp == FP_BTN_2An_Pin) {
        // Btn B is pressed!
        result |= FP_BTN_2B;
    }

    // Remux BTN_B/'COM' as output, drive low
    GPIO_InitStruct.Pin = FP_BTN_2Bn_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_MEDIUM;
    HAL_GPIO_Init(FP_BTN_2Bn_GPIO_Port, &GPIO_InitStruct);
    HAL_GPIO_WritePin(FP_BTN_2Bn_GPIO_Port, FP_BTN_2Bn_Pin, GPIO_PIN_RESET);

    temp = FP_BTN_2An_GPIO_Port->IDR & (FP_BTN_2An_Pin);
    if (temp == 0) {
        // Btn A is pressed!
        result |= FP_BTN_2A;
    }
    // Remux both btn A & B as inputs
    GPIO_InitStruct.Pin = FP_BTN_2An_Pin | FP_BTN_2Bn_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    HAL_GPIO_Init(FP_BTN_2Bn_GPIO_Port, &GPIO_InitStruct);


    // Sample Rotary encoder switch
    temp = FP_ENC_SWn_GPIO_Port->IDR & (FP_ENC_SWn_Pin);
    if (temp == 0) {
        // ENC-SW pressed
        result |= ENC_BTN;
    }

#if defined(DEBUG)
    static uint16_t prev_result = 0;
    if (result != prev_result) {
        uart_printf("BTNs raw: 0x%02X\n", result);
    }
    prev_result = result;
#endif

    return result;
}


static uint32_t sample_ss2k_buttons(void)
{
// SS2k MB:
    // Collect the various bits n' pieces scattered all over the ports....
    // Solderstation MB pinout : (BOARD_FPDEV == 0)
    // PD0 = FP_BTN_1An
    // PD1 = FP_BTN_1Bn
    // PD2 = FP_BTN_2An
    // PD3 = FP_BTN_2Bn
    // PD4 = FP_ENC_SWn
    // PD5 = FP_ENC2_SWn
    // PD12 = FP_ENC2_A (TIM4_CH1)
    // PD13 = FP_ENC2_B (TIM4_CH2)
    // PE9 = FP_ENC_A (TIM1_CH1)
    // PE11 = FP_ENC_B (TIM1_CH2)
    //

    uint32_t result = 0;

    // BTN_x : Sample port pins (Assume all pins on same bank, in order!)
    result = ~FP_BTN_1An_GPIO_Port->IDR & (FP_BTN_1An_Pin | FP_BTN_1Bn_Pin |
                                           FP_BTN_2An_Pin | FP_BTN_2Bn_Pin |
                                           FP_ENC_SWn_Pin
#ifdef FP_ENC2_SWn_Pin
                                           | FP_ENC2_SWn_Pin
#endif
        );

#if defined(DEBUG)
    static uint16_t prev_result = 0;
    if (result != prev_result) {
        uart_printf("BTNs raw: 0x%02X\n", result);
    }
    prev_result = result;
#endif

    return result;
}


/* Public module functions */

/* Sample digital inputs, shuffle to proper alignment if needed, stove raw data
   for subsequent debounce and quadrature decoding, later in main context.

   This function is intended to be called at regular intervals e.g. 1ms, presumably
   in ISR context. A flag is set to indicate that subsequent processing is required
   presumably in main thread context. See: buttons_periodic_debounce_handler().
*/
void buttons_timer_tick_ISR(void)
{
    uint32_t temp;
    uint32_t encAB;  // current rotary Gray coded inputs

#if defined(BOARD_FPDEV) && (BOARD_FPDEV != 0)
    // Collect the various bits n' pieces scattered all over the ports....
    // FP_Dev F103 pinout : ( BOARD_FPDEV == 1)
    // PA11 = FP_BTN_1Bn
    // PA12 = FP_BTN_1An
    // PB6  = FP_ENC_A (TIM4_CH1)
    // PB7  = FP_ENC_B (TIM4_CH2)
    // PB13 = FP_BTN_2An
    // PB14 = FP_BTN_2Bn
    // PB15 = FP_ENC_SWn
    //

    // Capture the rotary enc. pins...
    uint16_t pb = ~GPIOB->IDR;  // Sample PORTB, normalize 'active high'

//    encAB = ((pb >> 5) & 0x02) | ((pb >> 7) & 0x01);  // 1:0 = [A B]
    encAB = ((pb >> 6) & 0x03);        // 1:0 = [B A]

    // Separate function for sampling front-panel buttons due to pinheader mixup
    temp = sample_fpdev_buttons_with_pinout_hack();

#else // SS2k MB:
    // Collect the various bits n' pieces scattered all over the ports....
    // Solderstation MB pinout : (BOARD_FPDEV == 0)
    // PD0 = FP_BTN_1An
    // PD1 = FP_BTN_1Bn
    // PD2 = FP_BTN_2An
    // PD3 = FP_BTN_2Bn
    // PD4 = FP_ENC_SWn
    // PD5 = FP_ENC2_SWn
    // PD12 = FP_ENC2_A (TIM4_CH1)
    // PD13 = FP_ENC2_B (TIM4_CH2)
    // PE9 = FP_ENC_A (TIM1_CH1)
    // PE11 = FP_ENC_B (TIM1_CH2)
    //

    // Capture the rotary enc. pins...
    uint16_t pe = ~GPIOE->IDR;  // Sample PORTE, normalize 'active high'
    encAB = ((pe >> (9-1)) & 0x02) | ((pe >> 11) & 0x01);  // 1:0 = [A B]

    temp = sample_ss2k_buttons();

#endif

    /* Stuff intermediate states in data-struct for subsequent processing */
    io.isr_encAB = (uint8_t)encAB;
    io.isr_dbtns = (dbtn_map_t)temp;

    /* Set flag for main context to invoke the subsequent periodic handler */
    io.pending_periodic_handling_flag = 1;
}


/** Poll for pending post-processing.
    Check at regular intervals, e.g. in main()-loop, if it's time to invoke the
    post-processing in the debounce-handler.

    If the return value is non-zero, invoke the buttons_periodic_deboune_handler()
    function; otherwise do nothing.
*/
uint32_t buttons_is_periodic_handler_triggered(void)
{
    __disable_irq();
    uint32_t res = io.pending_periodic_handling_flag;
    io.pending_periodic_handling_flag = 0;
    __enable_irq();
    return res;
}

/* Soft-debounce digital buttons states, soft-decode quadrature rotary position.
   This function should be invoked at regular intervals, e.g. from a main-loop
   or input handling thread, whenever the pending updates-flag has been set
   (e.g. indicated by polling @buttons_is_periodic_handler_needed() ).
   This is the post-processing stage after the raw digital inputs have been
   sampled in some timer interrupt context. See: buttons_timer_tick_ISR().
*/
button_id_t buttons_periodic_debounce_handler(button_id_t *prev_states)
{
    uint32_t encAB = io.isr_encAB;
    uint32_t temp = io.isr_dbtns;

    /* Debounce digital buttons... */
    uint32_t btn_changed = temp ^ io.dbtns_raw;  // states that have changed
    io.dbtns_raw = (dbtn_map_t)temp;             // (store new raw states)

    /* For each pin that has changed, reload a corresponding debounce-counter
       For each counter that's != 0, count it down (the debounce period)
       For each counter that's reached 0, the signal is considered stable;
         update this pin's state-flag in the stable-states bitmap
    */
    uint32_t btns = io.dbtns;    // working bitmap of current stable states
    for (int i = 0; i < NBR_DEBOUNCED_PINS; i++) {
        int cnt = io.dbtn_debcnt[i];   // get current debounce-count
        if (btn_changed & 0x01) {
            // Current button toggled or glitched; reload its debounce-cnter
            cnt = DEBOUNCE_TICKS + 1;
#if defined(DEBUG)
            uart_printf("%u: glitch btn %d\n", HAL_GetTick(), i);
#endif
        } else if (cnt > 0) {
            // debouncing...
            cnt--;
#if defined(DEBUG)
            if (cnt == 0) uart_printf("%u:  deb. btn %d\n", HAL_GetTick(), i);
#endif
        } else {
            // state is stable; update bit in stable state map
            btns &= ~(1 << i);
            btns |= temp & (1 << i);
        }
        io.dbtn_debcnt[i] = (debreg_t)cnt;
        btn_changed >>= 1;  // next btn-change to LSB
    }
    // track state changes
    btn_changed = btns ^ io.dbtns;
    io.buttons_changed |= (dbtn_map_t)btn_changed;
    // Optional output param
    if (prev_states != NULL) {
        // Caller wanted previous stable-states
        *prev_states = io.dbtns;
    }
    io.dbtns = (dbtn_map_t)btns;  // store new stable-states


    // Rotary decoding
    // This is the neat, simple, clean logic; as it would have been done in HW.
    //
    // We sample the full A,B and A',B' Gray states needed for full x4 decoding,
    // even though some encoders have multiple transitions per physical detent.
    // Full state allows us to detect and filter out invalid Gray transitions
    // (and keep an Error count).
    // Alternatively, additional higher-level heuristics could be added (e.g.
    // "inertia") that could mask some invalid encoder transitions, although for
    // UI use-cases, simply ignoring errors is probably OK.
    //
    // With quarature x4 clocking, we can select which event(s) to count on;
    // if we trigger on either 0x01 or 0x02 we get the full x4 resolution.
    // Depending on the encoder used, you could have either x1, x2 or x4 Gray-
    // code transitions per physical detent. Alternatively, count all transitions
    // but divide the resulting pos-count by >>1 or >>2 to get corresponding
    // actual detent-counts.
    temp = io.prev_encAB;
    uint8_t dir = ((encAB >> 1) ^ (temp)) & 0x01; // d = (A ^ B')
    uint8_t cnt_x4 = (encAB ^ temp);              // x4 = (AB ^ A'B')
    if (cnt_x4 == 3) {
        // Error! Invalid transition; both bits changed!
        // If we had saved the previous valid 'dir' we could quite safely assume
        // that we're actually still spinning in that same direction and just
        // update the counter in spite of the error.
        // Here we'll just hold the pos-count and keep an error-counter for curiosity.
        io.rotary_errs++;
#if 1 || defined(DEBUG)
        uart_printf("Rot ERR: %d\n", io.rotary_errs);
#endif
    } else if (cnt_x4 == 1) {
        // Valid transition; update count.
        io.rotary_pos += (dir ? 1 : -1);
        /* Note: if we count on either event (0x01 or 0x02), we get the true x4
           encoder resolution. Counting on just one of them, we'll get x2 positions.
           Event 0x01 is B ^ B', event 0x02 is A ^ A'.
           For example, the ALPS EC11E18244A5 is is an x2-encoder with x2 transitions
           per detent; the 'A' signal being guaranteed stable. If we count on the 0x02
           trigger, the position will be stable when this encoder is idle in its detents.
        */
#if 1 || defined(DEBUG)
        uart_printf("R: %d\n", io.rotary_pos);
#endif
    }
    io.prev_encAB = encAB;


#if 1 || defined(DEBUG)
    if (btn_changed) {
        uart_printf("B: 0x%02X\n", btns);
    }
#endif

    // Return new stable-states
    return (dbtn_map_t)btns;
}


/* ADC HWID quantization thresholds */
/*
static const uint16_t abtn_map_points[16]  =
{
    40, 119, 196, 271, 345, 417, 487, 555,    // TODO: FIXME! Correct ADC-values must be calulated...
    622, 688, 752, 814, 875, 935, 994, 4096
};

// Decode an ADC reading to the contributing 4-bit resistor- or pushbuttons combo
static uint8_t decode_adc_buttons(uint16_t adc)
{
    for (uint8_t i = 0; i < 16; i++) {
        uint16_t midpt = abtn_map_points[i];
        if (adc < midpt) {
            // Decoded button combination found!
            return i;
        }
    }
    UARTPuts("decode_adc_buttons FAILED! Should Never Happen!!\n");
    return 0xFF;
}
*/

/*
static const uint8_t hwid_pins[NBR_ADC_ID_CHNS] = { DB_ID0_pin, DB_ID1_pin, BRD_ID_pin };

uint8_t frontpanel_update_hwid(void)
{
    uint8_t ch;
    uint8_t retval = 0;

    // Oversample and avg all HWID pins...
    for (ch = 0; ch < NBR_ADC_ID_CHNS; ch++) {
        uint16_t temp16 = 0;
        uint8_t adc_pin = pgm_read_byte_near(&hwid_pins[ch]);
        for (int8_t i = NBR_ADC_SAMPLES-1; i >= 0; i--) {
            temp16 += analogRead(adc_pin);
        }
        temp16 = temp16 / NBR_ADC_SAMPLES;
        io.hwid_adc[ch] = temp16;

        // Decode and debounce the HWID bitpatterns
        uint8_t temp8 = decode_adc_buttons(temp16);
        if (temp8 != 0xFF) {
            // Compare with previous state...
            if (temp8 != io.hwid_dec[ch]) {
                // Unstable - update & (re-)start debounce
                io.hwid_dec[ch] = temp8;
                io.hwid_debcnt[ch] = DEBOUNCE_TICKS;
                retval++;
                continue;
            }
        }
        // Update debounce counters
        if (io.hwid_debcnt[ch] > 0) {
            io.hwid_debcnt[ch]--;
            retval++;
        }
    }

    // Update stable bitmaps when debounce done
    if (io.hwid_debcnt[BRD_ID] == 0) {
        io.brd_hwid = io.hwid_dec[BRD_ID];
    }
    if (io.hwid_debcnt[DB_ID0] + io.hwid_debcnt[DB_ID1] == 0) {
        io.db_hwid = (io.hwid_dec[DB_ID1] << 4) | io.hwid_dec[DB_ID0];
    }

    return retval;
}
*/

button_id_t buttons_check_button_states(button_id_t *change_map)
{
/* (No analog buttons in SolderStation Frontpanel!)
    uint8_t temp8;
    // Oversample, average and decode ADC readings for ABTNS
    uint16_t temp16 = 0;
    for (int8_t i = NBR_ADC_SAMPLES-1; i >= 0; i--) {
        temp16 += analogRead(ABTNS_pin);
    }
    temp16 = temp16 / NBR_ADC_SAMPLES;
    io.abtns_adc = temp16;

    // Decode 4-bit ABTNS bitmap
    temp8 = decode_adc_buttons(temp16);
    if (temp8 != 0xFF) {
        // Compare with previous state...
        if (temp8 != io.abtns_dec) {
            // Unstable - update & (re-)start debounce
            io.abtns_dec = temp8;
            io.abtns_debcnt = DEBOUNCE_TICKS + 1;
        }
    }
    // Update debounce counter for ABTN
    if (io.abtns_debcnt > 0) {
        io.abtns_debcnt--;
    } else {
        io.abtns = io.abtns_dec;
    }

    io.buttons = (button_id_t)((io.dbtns << 4) | io.abtns);
*/

    if (change_map != NULL) {
        // Return changed-map
        *change_map = io.buttons_changed;
        io.buttons_changed = 0;    // TBD if set here or outside the if..?
    }
    // clear the changed-since tracking

    // TBD: invoke registered callback handlers, if any
    // TBD: include dynamics handling (long-press, dbl-click, etc) ?

    return io.dbtns;
}

int32_t buttons_check_rotary_position(int32_t *last_position)
{
    int32_t pos = io.rotary_pos;
    if (last_position != NULL) {
        // Return previous position
        *last_position = io.previous_rotary_pos;
        io.previous_rotary_pos = pos;       // TBD if set here or outside the if..?
    }
    return pos;
}

uint32_t buttons_get_rotary_errors(void)
{
    uint32_t errs = io.rotary_errs;
    return errs;
}

uint8_t get_mainboard_hwid(void)
{
    return io.hwid_dec[MB_HWID];
}

uint8_t get_frontpanel_hwid(void)
{
    return io.hwid_dec[FP_HWID];
}



/**** END OF FILE ****/
