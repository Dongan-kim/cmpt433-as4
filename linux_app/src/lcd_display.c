#include "lcd_display.h"
#include "DEV_Config.h"
#include "LCD_1in54.h"
#include "GUI_Paint.h"
#include "GUI_BMP.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static UWORD *s_fb;
//static int currentScreen = 1; // Start on Screen 1

void lcd_display_init() {
    if(DEV_ModuleInit() != 0){
        DEV_ModuleExit();
        exit(0);
    }

    // LCD Init
    LCD_1IN54_Init(HORIZONTAL);
    LCD_1IN54_Clear(WHITE);
    LCD_SetBacklight(1023);

    UDOUBLE Imagesize = LCD_1IN54_HEIGHT * LCD_1IN54_WIDTH * 2;
    if((s_fb = (UWORD *)malloc(Imagesize)) == NULL) {
        perror("LCD: Failed to allocate memory");
        exit(0);
    }
}

void lcd_display_status_screen(int hit, int miss, int minutes, int seconds) {
    Paint_NewImage(s_fb, LCD_1IN54_WIDTH, LCD_1IN54_HEIGHT, 0, WHITE, 16);
    Paint_Clear(WHITE);

    // Format strings
    char hitText[20], missText[20], timeText[20];
    snprintf(hitText, sizeof(hitText), "HIT: %d", hit);
    snprintf(missText, sizeof(missText), "MISS: %d", miss);
    snprintf(timeText, sizeof(timeText), "%02d:%02d", minutes, seconds);

    sFONT* font = &Font24;

    // Draw text centered-ish
    Paint_DrawString_EN(10, 20, hitText, font, WHITE, BLACK);
    Paint_DrawString_EN(10, 80, missText, font, WHITE, BLACK);
    Paint_DrawString_EN(30, 140, timeText, font, WHITE, BLACK);

    LCD_1IN54_Display(s_fb);
}
// Cleanup Function
void lcd_display_cleanup() {
    free(s_fb);
    s_fb = NULL;
    DEV_ModuleExit();
}