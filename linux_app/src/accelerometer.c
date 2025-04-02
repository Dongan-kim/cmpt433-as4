// accelerometer.c (threaded version for Assignment 4)
// Provides background thread updating global X/Y/Z values

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include "include/accelerometer.h"

#define I2C_BUS "/dev/i2c-1"
#define ACCEL_ADDR 0x19
#define WHO_AM_I_REG 0x0F
#define CTRL1_REG 0x20
#define CTRL6_REG 0x25
#define OUTX_L 0x28

static int i2c_fd = -1;
static pthread_t accelThread;
static volatile int16_t latestX = 0, latestY = 0, latestZ = 0;
static int running = 1;

int get_latest_accel(int16_t *x, int16_t *y, int16_t *z) {
    *x = latestX;
    *y = latestY;
    *z = latestZ;
    return 0;
}

static int read_accel_data(int16_t *x, int16_t *y, int16_t *z) {
    uint8_t buffer[6];
    uint8_t reg = OUTX_L;

    if (write(i2c_fd, &reg, 1) != 1 || read(i2c_fd, buffer, 6) != 6) {
        return -1;
    }
    *x = (int16_t)((buffer[1] << 8) | buffer[0]);
    *y = (int16_t)((buffer[3] << 8) | buffer[2]);
    *z = (int16_t)((buffer[5] << 8) | buffer[4]);
    return 0;
}

static void *accel_thread_fn(void *arg) {
    (void)arg;
    int16_t x, y, z;
    while (running) {
        if (read_accel_data(&x, &y, &z) == 0) {
            latestX = x;
            latestY = y;
            latestZ = z;
        }
        usleep(5000); // 200Hz polling
    }
    return NULL;
}

void accelerometer_init() {
    i2c_fd = open(I2C_BUS, O_RDWR);
    if (i2c_fd < 0) {
        perror("open I2C");
        exit(EXIT_FAILURE);
    }

    if (ioctl(i2c_fd, I2C_SLAVE, ACCEL_ADDR) < 0) {
        perror("ioctl I2C_SLAVE");
        close(i2c_fd);
        exit(EXIT_FAILURE);
    }

    uint8_t id = 0;
    write(i2c_fd, (uint8_t[]){WHO_AM_I_REG}, 1);
    read(i2c_fd, &id, 1);
    if (id != 0x44) {
        fprintf(stderr, "ERROR: WHO_AM_I returned 0x%X\n", id);
        exit(EXIT_FAILURE);
    }

    // Configure LIS3DH
    write(i2c_fd, (uint8_t[]){CTRL1_REG, 0x60}, 2); // 200Hz
    write(i2c_fd, (uint8_t[]){CTRL6_REG, 0x00}, 2); // ±2g

    pthread_create(&accelThread, NULL, accel_thread_fn, NULL);
    pthread_detach(accelThread);
}

void accelerometer_cleanup() {
    running = 0;
    if (i2c_fd >= 0) {
        close(i2c_fd);
    }
}