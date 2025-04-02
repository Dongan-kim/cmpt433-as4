// main.c
// Linux app for Assignment 4 - Part 1.2: Point and Accelerometer (threaded accel)

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <math.h>
#include <time.h>
#include <string.h>
#include "include/accelerometer.h"
#include "sharedDataLayout.h"

#define NUM_LEDS 8
#define SHARED_MEM_LENGTH 0x8000
#define SHARED_MEM_BASE 0x79020000
#define SHARED_RGB_OFFSET END_MEMORY_OFFSET

#define LED_ON_TARGET_COLOR 0xFFFFFFFF  // White
#define RED_COLOR 0x00FF0000
#define GREEN_COLOR 0x0000FF00
#define BLUE_COLOR 0x000000FF

volatile uint8_t *pSharedMem;

// Map shared memory region from R5 BTCM
void map_shared_memory() {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("open /dev/mem");
        exit(EXIT_FAILURE);
    }

    pSharedMem = (volatile uint8_t *) mmap(
        NULL,
        SHARED_MEM_LENGTH,
        PROT_READ | PROT_WRITE,
        MAP_SHARED,
        fd,
        SHARED_MEM_BASE
    );

    if (pSharedMem == MAP_FAILED) {
        perror("mmap");
        exit(EXIT_FAILURE);
    }

    close(fd);
}

void write_led_color(int index, uint32_t color) {
    int offset = SHARED_RGB_OFFSET + (index * 4);
    *(volatile uint32_t *)(pSharedMem + offset) = color;
}

// Map tilt to range -1 to 1
float normalize(int16_t raw) {
    return (float)raw / 16384.0f;  // assuming ±2g scale, 1g = 16384
}

int main() {
    srand(time(NULL));
    accelerometer_init();
    map_shared_memory();

    float targetX = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
    float targetY = ((float)(rand() % 1001) / 1000.0f) - 0.5f;

    printf("Target: X=%.2f Y=%.2f\n", targetX, targetY);

    const float threshold = 0.1f;
    const char* lastDirection = "";
    time_t lastPrint = time(NULL);  // Track last time we printed x/y

    while (true) {
        int16_t rawX, rawY, rawZ;
        if (get_latest_accel(&rawX, &rawY, &rawZ) != 0) {
            usleep(10000);
            continue;
        }

        float x = normalize(rawX);
        float y = normalize(rawY);
        float dx = targetX - x;
        float dy = targetY - y;

        time_t now = time(NULL);
        if (now != lastPrint) {
            printf("📍 Current X=%.2f Y=%.2f | Target X=%.2f Y=%.2f\n", x, y, targetX, targetY);
            lastPrint = now;
        }

        const char* direction;
        if (fabs(dx) <= threshold && fabs(dy) <= threshold) {
            direction = "🎯 On Target!";
        } else if (fabs(dx) > fabs(dy)) {
            direction = (dx > 0) ? "➡️  Tilt Right" : "⬅️  Tilt Left";
        } else {
            direction = (dy > 0) ? "⬆️  Tilt Up" : "⬇️  Tilt Down";
        }

        if (strcmp(direction, lastDirection) != 0) {
            printf("Direction Hint: %s\n", direction);
            lastDirection = direction;
        }

        uint32_t colour;
        if (fabs(dx) <= threshold)
            colour = BLUE_COLOR;
        else if (dx > threshold)
            colour = GREEN_COLOR;
        else
            colour = RED_COLOR;

        int ledMid = NUM_LEDS / 2 + (int)(-dy * (NUM_LEDS / 2));
        if (ledMid < 1) ledMid = 1;
        if (ledMid > NUM_LEDS - 2) ledMid = NUM_LEDS - 2;

        if (fabs(dx) <= threshold && fabs(dy) <= threshold) {
            for (int i = 0; i < NUM_LEDS; i++)
                write_led_color(i, LED_ON_TARGET_COLOR);

            printf("🎯 Target Hit! Generating new target...\n");

            // Pause so user can see the full LED display
            usleep(500000);

            // Generate a new target
            targetX = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
            targetY = ((float)(rand() % 1001) / 1000.0f) - 0.5f;
            printf("🎯 New Target: X=%.2f Y=%.2f\n", targetX, targetY);
            continue;
        } else {
            for (int i = 0; i < NUM_LEDS; i++)
                write_led_color(i, 0);
            write_led_color(ledMid - 1, colour / 3);
            write_led_color(ledMid, colour);
            write_led_color(ledMid + 1, colour / 3);
        }

        usleep(100000);  // 10Hz update
    }

    return 0;
}
