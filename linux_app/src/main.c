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

    // ✅ Store mapped address globally
    // pSharedMem = map_shared_memory();
    // if (pSharedMem == NULL) {
    //     fprintf(stderr, "Shared memory not mapped!\n");
    //     exit(EXIT_FAILURE);
    // }

    pSharedMem = map_shared_memory();

    // // ✅ Print R5 debug values to confirm R5 is alive
    // volatile uint32_t* debugStart = (volatile uint32_t *)((volatile uint8_t *)pSharedMem + DEBUG_START_OFFSET);
    // volatile uint32_t* debugEnd   = (volatile uint32_t *)((volatile uint8_t *)pSharedMem + DEBUG_END_OFFSET);
    // printf("DEBUG_START: 0x%08X | LOOP COUNT: %u\n", *debugStart, *debugEnd);

    float targetX = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
    float targetY = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
    const float threshold = 0.1f;

    float dx, dy;

    while (true) {
        Direction dir = process_accel_and_target(&targetX, &targetY, threshold, &dx, &dy);
        printf("Direction: %s\n", direction_to_string(dir));

        for (int i = 0; i < NUM_LEDS; i++) {
            uint32_t color;
    
            // Choose color based on direction
            if (dir == DIRECTION_LEFT) {
                color = 0xFF000000;  // Red-ish (but note: high byte may be unused)
            } else if (dir == DIRECTION_RIGHT) {
                color = 0x0000FF00;  // Green
            } else {
                color = 0x00FF0000;  // Blue
            }
    
            write_led_color(i, color);
    
            // Optional: print the actual value written to shared memory
            uint32_t readback = *((volatile uint32_t *)((uint8_t *)pSharedMem + SHARED_RGB_OFFSET + (i * 4)));
            printf("  LED[%d] = 0x%08X\n", i, readback);
        }

        struct timespec ts = {0, 100000000};  // 100ms
        nanosleep(&ts, NULL);
        //usleep(100000); // 10Hz update
    }

    return 0;
}
