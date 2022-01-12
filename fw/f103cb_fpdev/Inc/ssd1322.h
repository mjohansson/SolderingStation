/** @file
 * Low-level driver for SSD1322-based OLED display/ctrl (256x64, 4bpp)
 *
 *
 * @author Mathias Johansson (e96mjh@gmail.com)
 *
 * © Copyright Mathias Johansson 2019
 *
 */

#ifndef INCLUDE_SSD1322_H
#define INCLUDE_SSD1322_H

#ifdef __cplusplus
extern "C" {
#endif


////////////////////////////////////////////////////////////////////////////////
/**
 * @name Includes
 */
//@{

#include <stddef.h>
#include <stdint.h>

//@} End of Includes



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Defines
 * Public defines related to this functionality.
 */
//@{

#define LCDWIDTH    256u
#define LCDHEIGHT   64u
#define LCDBPP      4u

#define ENABLE_GRAYSCALE_TABLE 0x00
#define SET_COLUMN_ADDRESS     0x15
#define WRITE_RAM_COMMAND      0x5c
#define READ_RAM_COMMAND       0x5d
#define SET_ROW_ADDRESS        0x75
#define SET_REMAP_DUAL_MODE    0xa0
#define SET_DISPLAY_START_LINE 0xa1
#define SET_DISPLAY_OFFSET     0xa2
#define SET_DISPLAY_MODE_OFF   0xa4
#define SET_DISPLAY_MODE_ON    0xa5
#define SET_DISPLAY_MODE_NORM  0xa6
#define SET_DISPLAY_MODE_INV   0xa7
#define ENABLE_PARTIAL_DISPLAY 0xa8
#define EXIT_PARTIAL_DISPLAY   0xa9
#define FUNCTION_SELECTION     0xab
#define SET_SLEEP_MODE_OFF     0xaf
#define SET_SLEEP_MODE_ON      0xae
#define SET_PHASE_LENGTH       0xb1
#define SET_CLOCK_DIV_OSC_FREQ 0xb3
#define DISPLAY_ENHANCEMENT_A  0xb4
#define SET_GPIO               0xb5
#define SET_2ND_PRECHARGE_PER  0xb6
#define SET_GRAYSCALE_TABLE    0xb8
#define SET_LINEAR_GRAYSCALE   0xb9
#define SET_PRECHARGE_VOLTAGE  0xbb
#define SET_VCOMH              0xbe
#define SET_CONTRAST_CURRENT   0xc1
#define MASTER_CONTRAST_CTRL   0xc7
#define SET_MUX_RATIO          0xca
#define DISPLAY_ENHANCEMENT_B  0xd1
#define SET_COMMAND_LOCK       0xfd



//@} End of Defines



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Typedefs
 * Public typedefs related to this functionality.
 */
//@{

    typedef enum {
        DISPLAY_ALL_OFF,
        DISPLAY_ALL_ON,
        DISPLAY_NORMAL,
        DISPLAY_INVERTED
    } ssd1322_display_mode_t;


//@} End of Typedefs



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Global data
 */
//@{

    extern const uint8_t Logo_256x64[8192];

//@} End of Global data



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Public methods
 */
//@{

    void ssd1322_init(void);

    void ssd1322_uninit(void);

    void ssd1322_set_display_mode(ssd1322_display_mode_t mode);

    uint8_t ssd1322_set_dimming(uint8_t data);

    uint8_t ssd1322_set_brightness(uint8_t data);

    /* void stv8105_invert_all(uint8_t invert); */

    /* void stv8105_on_off(uint8_t enable); */

    /* void stv8105_clear_display(uint8_t data); */

    void ssd1322_update_display(const uint8_t* data, uint32_t length);

    void ssd1322_fill_display(uint32_t pattern);

    //void ssd1322_data(uint8_t data); // temp

    //void ssd1322_cmd(uint8_t cmd); // temp

//@} End of Public methods



////////////////////////////////////////////////////////////////////////////////
/**
 * @name Implemented callback functions
 * These methods are exported to other modules, but are callback handlers, not
 * intended to be invoked under any other circumstanses than the CB notification.
 */
//@{



//@} End of Implemented callback functions

#ifdef __cplusplus
}
#endif

#endif  // INCLUDE_SSD1322_H
