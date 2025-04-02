#ifndef _SHARED_DATA_STRUCT_H_
#define _SHARED_DATA_STRUCT_H_

#include <stdbool.h>
#include <stdint.h>

// R5 Shared Memory Note
// - Using a struct in ATCM may cause access issues, so we define raw offsets

#define MSG_OFFSET 0
#define MSG_SIZE   32

#define LED_DELAY_MS_OFFSET        (MSG_OFFSET + MSG_SIZE)
#define IS_BUTTON_PRESSED_OFFSET   (LED_DELAY_MS_OFFSET + sizeof(uint32_t))
#define BTN_COUNT_OFFSET           (IS_BUTTON_PRESSED_OFFSET + sizeof(uint32_t))
#define LOOP_COUNT_OFFSET          (BTN_COUNT_OFFSET + sizeof(uint32_t))

#define END_MEMORY_OFFSET          (LOOP_COUNT_OFFSET + sizeof(uint32_t))

// NeoPixel LED Strip
#define SHARED_RGB_OFFSET          (END_MEMORY_OFFSET)
#define NEO_NUM_LEDS               8
#define SHARED_MEM_TOTAL_BYTES     (SHARED_RGB_OFFSET + (NEO_NUM_LEDS * sizeof(uint32_t)))

// Helper macros for low-level memory access (if needed)
#define MEM_UINT8(addr)  (*(uint8_t *)(addr))
#define MEM_UINT32(addr) (*(uint32_t *)(addr))

#endif // _SHARED_DATA_STRUCT_H_