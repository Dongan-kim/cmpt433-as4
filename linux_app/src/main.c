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
#include "accelerometer.h"
#include "sharedDataLayout.h"

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

// ✅ Make pSharedMem global
volatile void* pSharedMem = NULL;

// ✅ Function that maps memory and returns the pointer
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

const char* direction_to_string(Direction dir) {
    switch (dir) {
        case DIRECTION_LEFT:      return "⬅️  Tilt Left";
        case DIRECTION_RIGHT:     return "➡️  Tilt Right";
        case DIRECTION_UP:        return "⬆️  Tilt Up";
        case DIRECTION_DOWN:      return "⬇️  Tilt Down";
        case DIRECTION_ON_TARGET: return "🎯 On Target!";
        case DIRECTION_NONE:      
        default:                  return "⏸️  No Action";
    }
}

// ✅ Use global pSharedMem
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

int main() {
    srand(time(NULL));
    accelerometer_init();

    pSharedMem = map_shared_memory();
    // Set LED update delay (in milliseconds) for R5
    *((volatile uint32_t *)((uint8_t *)pSharedMem + LED_DELAY_MS_OFFSET)) = 10; // 10ms

    float targetX = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
    float targetY = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
    const float threshold = 0.1f;

    //float dx, dy;


    //time_t lastPrintTime = 0;

    while (true) {
        Direction dir = process_accel_and_target(&targetX, &targetY, threshold);
        //printf("📍 Current X=%.2f Y=%.2f | Target X=%.2f Y=%.2f\n",targetX, targetY);
        printf("Direction: %s\n", direction_to_string(dir));

        float errorX = get_dx();
        //float errorY = targetY - dy;
        
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
        if (dir == DIRECTION_ON_TARGET) {
            // On Target: All LEDs bright blue
            for (int i = 0; i < NUM_LEDS; i++) {
                write_led_color(i, BLUE_BRIGHT);
            }
            printf("Target Hit! Generating new target...\n");
            struct timespec pause = {1, 0};
            nanosleep(&pause, NULL);
            targetX = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
            targetY = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
        }else if (fabsf(errorX) <= 0.1f) {
            //X is on target: light all LEDs based on Y direction color
            for (int i = 0; i < NUM_LEDS; i++) {
                write_led_color(i, brightColor);
            }
        }else if (dir == DIRECTION_NONE) {
            for (int i = 0; i < NUM_LEDS; i++) {
                write_led_color(i, 0x00000000);
            }
        }else {
            // 🌐 Not fully on target → Light 3 LEDs based on Y-axis position
            float step = 0.4f;
            float offset = errorX / step;  // each 0.4 of error shifts one LED
            int centerIndex = 4 + (int)roundf(offset) - 1;  // LED index decreases when board too low
        
            // Clamp to valid center range (1 to 6) to safely light +/-1
            if (centerIndex < 1) centerIndex = 1;
            if (centerIndex > 6) centerIndex = 6;
        
            for (int i = 0; i < NUM_LEDS; i++) {
                if (i == centerIndex) {
                    write_led_color(i, brightColor); // Bright center
                } else if (i == centerIndex - 1 || i == centerIndex + 1) {
                    write_led_color(i, dimColor);    // Dim sides
                } else {
                    write_led_color(i, 0x00000000);  // Off
                }
            }
        }

        struct timespec ts = {0, 100000000};  // 100 ms
        nanosleep(&ts, NULL);
    
        //float errorX = targetX - dx;
    
        // uint32_t color;
        // if (dir == DIRECTION_LEFT) {
        //     color = RED_BRIGHT; // target is to the left → need to tilt left
        // } else if (dir == DIRECTION_RIGHT) {
        //     color = GREEN_BRIGHT; // target is to the right → need to tilt right
        // } else if (dir == DIRECTION_ON_TARGET){
        //     color = WHITE_BRIGHT; // centered
        // }else{
        //     color = BLUE_BRIGHT;
        // }
    
        // for (int i = 0; i < NUM_LEDS; i++) {
        //     if (dir == DIRECTION_ON_TARGET) {
        //         //On Target — light all LEDs bright white
        //         write_led_color(i, WHITE_BRIGHT);
        //     } else if (i == 2 || i == 4) {
        //         // Middle left/right → dim color
        //         uint32_t dimColor;
        //         if (color == RED_BRIGHT)
        //             dimColor = RED_DIM;
        //         else if (color == GREEN_BRIGHT)
        //             dimColor = GREEN_DIM;
        //         else
        //             dimColor = BLUE_DIM;
        
        //         write_led_color(i, dimColor);
        //     } else if (i == 3) {
        //         // Center LED → bright
        //         write_led_color(i, color);
        //     } else {
        //         // All others off
        //         write_led_color(i, 0x00000000);
        //     }
        // }
    
        // if (dir == DIRECTION_ON_TARGET) {
        //     struct timespec pause = {1, 0};  // 1 second
        //     nanosleep(&pause, NULL);
        // } else {
        //     struct timespec ts = {0, 100000000};  // 100 ms
        //     nanosleep(&ts, NULL);
        // }
    }

    return 0;
}
