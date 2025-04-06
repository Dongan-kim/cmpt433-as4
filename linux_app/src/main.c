#define _POSIX_C_SOURCE 200809L
#include <unistd.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <math.h>
#include <time.h>
#include <string.h>
#include <signal.h>
#include "accelerometer.h"
#include "sharedDataLayout.h"
#include "lcd_display.h"
#include "joystick_press.h"

#define NUM_LEDS 8
#define SHARED_MEM_LENGTH 0x8000
#define SHARED_MEM_BASE 0x79020000

#define RED_BRIGHT    0x00ff0000
#define RED_DIM       0x000f0000
#define GREEN_BRIGHT  0xff000000
#define GREEN_DIM     0x0f000000
#define BLUE_BRIGHT   0x0000ff00
#define BLUE_DIM      0x00000f00
#define WHITE_BRIGHT  0xffffff00
#define PURPLE        0x000f0f00
#define YELLOW        0x0f0f0000
#define RB_BRIGHT     0x00ff00ff // Red Bright w/ Bright White
#define BW_BRIGHT     0x0000ffff // Blue Bright w/ Bright White
#define ORANGE        0x0fff0000 // Orange


volatile void* pSharedMem = NULL;
volatile int keepRunning = 1;

volatile void* map_shared_memory(void) {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("open /dev/mem");
        exit(EXIT_FAILURE);
    }

    volatile void* addr = mmap(0, SHARED_MEM_LENGTH, PROT_READ | PROT_WRITE, MAP_SHARED, fd, SHARED_MEM_BASE);
    if (addr == MAP_FAILED) {
        perror("mmap");
        exit(EXIT_FAILURE);
    }

    close(fd);
    return addr;
}

void freeR5MmapAddr(volatile void* addr)
{
    if (munmap((void*) addr, SHARED_MEM_LENGTH)) {
        perror("R5 munmap failed");
        exit(EXIT_FAILURE);
    }
}

void cleanup_resources() {
    printf("Cleaning up resources...\n");
    accelerometer_cleanup();
    lcd_display_cleanup();
    joystick_press_cleanup();
    printf("All resources cleaned up.\n");
}

//Use global pSharedMem
void write_led_color(int index, uint32_t color) {
    int offset = SHARED_RGB_OFFSET + (index * 4);
    volatile uint32_t* pAddr = (volatile uint32_t *)((volatile uint8_t *)pSharedMem + offset);
    *pAddr = color;
}

void compute_led_colors_by_direction(Direction dir, uint32_t* ledColors) {
    uint32_t color = 0;

    switch (dir) {
        case DIRECTION_LEFT:
            color = RED_BRIGHT;
            break;
        case DIRECTION_RIGHT:
            color = GREEN_BRIGHT;
            break;
        case DIRECTION_UP:
        case DIRECTION_DOWN:
            color = BLUE_BRIGHT;
            break;
        case DIRECTION_ON_TARGET:
            color = WHITE_BRIGHT;
            break;
        default:
            color = 0; // Off
            break;
    }

    for (int i = 0; i < NUM_LEDS; i++) {
        ledColors[i] = color;
    }
}

void handleSigint(int sig) {
    (void)sig;
    printf("\nShutting down...\n");
    keepRunning = 0;
}

int main() {
    signal(SIGINT, handleSigint);
    srand(time(NULL));
    joystick_press_init(); 
    accelerometer_init();
    lcd_display_init();
    time_t startTime = time(NULL);

    pSharedMem = map_shared_memory();
    // Set LED update delay (in milliseconds) for R5
    *((volatile uint32_t *)((uint8_t *)pSharedMem + LED_DELAY_MS_OFFSET)) = 10; // 10ms
    //printf("    %15s: 0x%04x\n", "isButtonPressed", MEM_UINT32(pSharedMem + IS_BUTTON_PRESSED_OFFSET));

    float targetX = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
    float targetY = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
    const float threshold = 0.1f;
    int num_hit = 0;
    int num_miss = 0;

    while (keepRunning) {
        time_t now = time(NULL);
        int elapsed = (int)(now - startTime);
        int minutes = elapsed / 60;
        int seconds = elapsed % 60;
        lcd_display_status_screen(num_hit, num_miss, minutes, seconds);
        Direction dir = process_accel_and_target(&targetX, &targetY, threshold);

        
        uint32_t brightColor, dimColor;
        
        // Choose color based on horizontal direction (X-axis)
        if (dir == DIRECTION_LEFT) {
            brightColor = RED_BRIGHT;
            dimColor = RED_DIM;
        } else if (dir == DIRECTION_RIGHT) {
            brightColor = GREEN_BRIGHT;
            dimColor = GREEN_DIM;
        } else if (dir == DIRECTION_DOWN || dir == DIRECTION_UP){
            brightColor = BLUE_BRIGHT;
            dimColor = BLUE_DIM;
        }

        //Check if both X and Y are within target threshold
        if (MEM_UINT32(pSharedMem + IS_BUTTON_PRESSED_OFFSET) && dir != DIRECTION_ON_TARGET){
            num_miss++;
            minutes = elapsed / 60;
            seconds = elapsed % 60;
            lcd_display_status_screen(num_hit, num_miss, minutes, seconds);
            const int delay_ms = 500;
            const struct timespec delay = {0, delay_ms * 1000000L};
        
            //
            write_led_color(0, 0x00000000);
            write_led_color(1, PURPLE);
            write_led_color(2, 0x00000000);
            write_led_color(3, PURPLE);
            write_led_color(4, 0x00000000);
            write_led_color(5, PURPLE);
            write_led_color(6, 0x00000000);
            write_led_color(7, PURPLE);
            nanosleep(&delay, NULL);

            write_led_color(0, PURPLE);
            write_led_color(1, 0x00000000);
            write_led_color(2, PURPLE);
            write_led_color(3, 0x00000000);
            write_led_color(4, PURPLE);
            write_led_color(5, 0x00000000);
            write_led_color(6, PURPLE);
            write_led_color(7, 0x00000000);
            nanosleep(&delay, NULL);
        

            struct timespec finalPause = {0, 10000 * 1000000L}; // 500ms
            nanosleep(&finalPause, NULL); 
        }
        float errorX = get_dx();
        if (dir == DIRECTION_ON_TARGET) {
            //All LEDs bright blue
            for (int i = 0; i < NUM_LEDS; i++) {
                write_led_color(i, BLUE_BRIGHT);
            }
            if (MEM_UINT32(pSharedMem + IS_BUTTON_PRESSED_OFFSET)) {
                num_hit++;
                minutes = elapsed / 60;
                seconds = elapsed % 60;
                lcd_display_status_screen(num_hit, num_miss, minutes, seconds);
                const int delay_ms = 200;
                const struct timespec delay = {0, delay_ms * 1000000L};
        
                //for animation
                write_led_color(0, 0x00000000);
                write_led_color(1, 0x00000000);
                write_led_color(2, 0x00000000);
                write_led_color(3, RB_BRIGHT);
                write_led_color(4, ORANGE);
                write_led_color(5, 0x00000000);
                write_led_color(6, 0x00000000);
                write_led_color(7, 0x00000000);
                nanosleep(&delay, NULL);
        
          
                write_led_color(0, 0x00000000);
                write_led_color(1, 0x00000000);
                write_led_color(2, BW_BRIGHT);
                write_led_color(3, 0x00000000);
                write_led_color(4, 0x00000000);
                write_led_color(5, ORANGE);
                write_led_color(6, 0x00000000);
                write_led_color(7, 0x00000000);
                nanosleep(&delay, NULL);
        
        
                write_led_color(0, 0x00000000);
                write_led_color(1, RB_BRIGHT);
                write_led_color(2, 0x00000000);
                write_led_color(3, 0x00000000);
                write_led_color(4, 0x00000000);
                write_led_color(5, 0x00000000);
                write_led_color(6, ORANGE);
                write_led_color(7, 0x00000000);
                nanosleep(&delay, NULL);

                write_led_color(0, 0x00000000);
                write_led_color(1, BW_BRIGHT);
                write_led_color(2, 0x00000000);
                write_led_color(3, 0x00000000);
                write_led_color(4, 0x00000000);
                write_led_color(5, 0x00000000);
                write_led_color(6, ORANGE);
                write_led_color(7, 0x00000000);
                nanosleep(&delay, NULL);

                write_led_color(0, RB_BRIGHT);
                write_led_color(1, 0x00000000);
                write_led_color(2, 0x00000000);
                write_led_color(3, 0x00000000);
                write_led_color(4, 0x00000000);
                write_led_color(5, 0x00000000);
                write_led_color(6, 0x00000000);
                write_led_color(7, ORANGE);
                nanosleep(&delay, NULL);
        
         
                for (int i = 0; i < NUM_LEDS; i++) {
                    write_led_color(i, 0x00000000); // Off
                }
                nanosleep(&delay, NULL);       
        
                //New target
                targetX = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
                targetY = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
            }
        }else if (fabsf(errorX) < 0.1f) {
            const int delay_ms = 100;
            const struct timespec delay = {0, delay_ms * 1000000L};
            //X is on target: light all LEDs based on Y direction color
            for (int i = 0; i < NUM_LEDS; i++) {
                write_led_color(i, brightColor);
            }
            nanosleep(&delay, NULL);
        }else {
            int centerIndex;  // Default centered

            if (errorX > 0.41f) {
                centerIndex = 8; // Far right dim (beyond range)
            } else if (errorX >= 0.35f) {
                centerIndex = 7;
            } else if (errorX >= 0.27f) {
                centerIndex = 6;
            } else if (errorX >= 0.19f) {
                centerIndex = 5;
            } else if (errorX >= 0.12f) {
                centerIndex = 4;
            } else if (errorX <= -0.41f) {
                centerIndex = -1; // Far left dim (beyond range)
            } else if (errorX <= -0.35f) {
                centerIndex = 0;
            } else if (errorX <= -0.27f) {
                centerIndex = 1;
            } else if (errorX <= -0.19f) {
                centerIndex = 2;
            } else if (errorX <= -0.12f) {
                centerIndex = 3;
            }

            for (int i = 0; i < NUM_LEDS; i++) {
                if (i == centerIndex) {
                    write_led_color(i, brightColor); // Bright center
                } else if (i == centerIndex - 1 || i == centerIndex + 1) {
                    if (i >= 0 && i < NUM_LEDS)
                        write_led_color(i, dimColor); // Dim sides
                } else {
                    write_led_color(i, 0x00000000); // Off
                }
            }
        }

        struct timespec ts = {0, 100000000};  // 100 ms
        nanosleep(&ts, NULL);
    }
    for (int i = 0; i < NUM_LEDS; i++) {
        write_led_color(i, 0x00000000); // Off
    }
    cleanup_resources();
    freeR5MmapAddr(pSharedMem);
    return 0;
}
