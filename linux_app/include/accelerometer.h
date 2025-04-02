#ifndef ACCELEROMETER_H
#define ACCELEROMETER_H

#include <stdint.h>

// Initialize the accelerometer and background thread
void accelerometer_init(void);

// Stop background thread and close I2C
void accelerometer_cleanup(void);

// Get latest readings from background thread
int get_latest_accel(int16_t *x, int16_t *y, int16_t *z);

#endif // ACCELEROMETER_H