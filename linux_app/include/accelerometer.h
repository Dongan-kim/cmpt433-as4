// accelerometer used to control direcction of byai. 
// use x,y direction when determining board orientation and target coords to see what color to show on neopixel.
// simple init and cleanup present

#ifndef ACCELEROMETER_H
#define ACCELEROMETER_H

#include <stdint.h>

typedef enum {
    DIRECTION_NONE = 0,       // No movement needed (used when axis is already within threshold)
    DIRECTION_LEFT,           // Tilt board to the left (target is more negative on X)
    DIRECTION_RIGHT,          // Tilt board to the right (target is more positive on X)
    DIRECTION_UP,             // Tilt board upward (target is more positive on Y)
    DIRECTION_DOWN,           // Tilt board downward (target is more negative on Y)
    DIRECTION_ON_TARGET       // Both X and Y are within threshold
} Direction;

// Initialize the accelerometer and background thread
void accelerometer_init(void);

Direction process_accel_and_target(float* targetX, float* targetY, float threshold);

// Stop background thread and close I2C
void accelerometer_cleanup(void);

// Get latest readings from background thread
int get_latest_accel(int16_t *x, int16_t *y, int16_t *z);

float get_dx();

#endif 