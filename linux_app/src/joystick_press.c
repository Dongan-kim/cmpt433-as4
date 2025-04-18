//This module handles detection of joystick button presses using GPIO.
//It sets up and monitors the GPIO line corresponding to the center press of the joystick.
//A background thread continuously checks the button state and updates a global flag.
#include <gpiod.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include "joystick_press.h"
#include "periodTimer.h"

#define GPIO_CHIP "/dev/gpiochip2"
#define GPIO_BUTTON 15

static struct gpiod_chip *chip;
static struct gpiod_line *button_line;
static pthread_t joystickThread;

void joystick_press_init() {
    chip = gpiod_chip_open(GPIO_CHIP);
    if (!chip) {
        perror("Failed to open GPIO chip");
        return;
    }

    button_line = gpiod_chip_get_line(chip, GPIO_BUTTON);
    if (!button_line) {
        perror("Failed to get GPIO line");
        gpiod_chip_close(chip);
        return;
    }

    //Request the button line as an input
    if (gpiod_line_request_input(button_line, "joystick_btn") < 0) {
        perror("Failed to request button line as input");
        gpiod_chip_close(chip);
        return;
    }

    //Create the background thread for listening
    if (pthread_create(&joystickThread, NULL, joystick_listener_push, NULL) != 0) {
        perror("Failed to create joystick thread");
    }
    pthread_detach(joystickThread);  // Let it run in background
}


// Thread function to listen for joystick presses
void *joystick_listener_push(void *arg) {
    (void)arg;
    static int lastState = 1; 
    static long lastPressTime = 0;

    printf("Joystick thread running\n");
    fflush(stdout); 

    while (keepRunning) {
        if (!button_line) continue; // Ensure button is initialized

        int currentState = gpiod_line_get_value(button_line);
        long currentTime = periodTimer_getCurrentTimeMs();

        if (lastState == 1 && currentState == 0) { 
            if (currentTime - lastPressTime > 200) { // 200ms debounce
                lastPressTime = currentTime;
                lastState = currentState;

                printf("joystick pressed\n");
                fflush(stdout);
                
                keepRunning = 0;
            }
        }

        lastState = currentState;
        struct timespec ts = {0, 100000000};  // 100 ms
        nanosleep(&ts, NULL);  
    }
    return NULL;
}

void joystick_press_cleanup() {
    keepRunning = 0;
    if (button_line) {
        gpiod_line_release(button_line);
    }
    if (chip) {
        gpiod_chip_close(chip);
    }
}