// LCD used to diplay hit/miss and timer.
// Hit/miss update in main.
// simple init and cleanup also present.

#ifndef LCD_DISPLAY_H
#define LCD_DISPLAY_H

#include <stdint.h>

// Initialize the LCD screen
void lcd_display_init(void);

// Display hit, miss, and timer with MM:SS
void lcd_display_status_screen(int hit, int miss, int minites, int seconds);

// Cleanup function for LCD
void lcd_display_cleanup(void);

#endif 