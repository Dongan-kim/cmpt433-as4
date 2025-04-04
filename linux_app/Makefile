# Makefile for building linux_app for BeagleBone

# Target name (no extension)
TARGET = linux_app

# Output directory
PUBDIR = $(HOME)/cmpt433/public/myApps
OUTDIR = $(PUBDIR)

# Compiler
CC = gcc

# Source files
SRCS = src/main.c src/accelerometer.c src/lcd_display.c \
       lcd/lib/Config/DEV_Config.c lcd/lib/LCD/LCD_1in54.c \
       lcd/lib/GUI/GUI_Paint.c lcd/lib/Fonts/font24.c

# Include directories
INCLUDES = -Iinclude -I. -Ilcd/lib/LCD -Ilcd/lib/Config -Ilcd/lib/GUI -Ilcd/lib/Fonts -Ilgpio

# Compiler flags
CFLAGS = -Wall -g -std=c99 -D _POSIX_C_SOURCE=200809L -Werror -Wshadow -DUSE_DEV_LIB -Iinclude -I. -Ilcd/lib/LCD -Ilcd/lib/Config -Ilcd/lib/GUI -Ilcd/lib/Fonts

# Linker libraries
LDLIBS = -lm lib/liblgpio.a

# Output executable path
OUT = $(OUTDIR)/$(TARGET)

# Default rule
all: $(OUT)

$(OUT): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(OUT) $(LDLIBS)

clean:
	rm -f $(OUT)