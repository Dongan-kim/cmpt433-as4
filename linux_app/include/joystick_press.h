#ifndef _JOYSTICK_PRESS_H_
#define _JOYSTICK_PRESS_H_

//extern volatile int joystick_is_pressed;
extern volatile int keepRunning;


void joystick_press_init();
void *joystick_listener_push(void *arg);
void joystick_press_cleanup();

#endif