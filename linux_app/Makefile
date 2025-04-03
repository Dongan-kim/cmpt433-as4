# Makefile for building linux_app for BeagleBone

# Target name (no extension)
TARGET = linux_app

# Output directory
PUBDIR = $(HOME)/cmpt433/public/myApps
OUTDIR = $(PUBDIR)

# Compiler
CC = gcc

# Source files
SRCS = src/main.c src/accelerometer.c

# Include directories
INCLUDES = -Iinclude -I.

# Compiler flags
CFLAGS = -Wall -g -std=c99 -D _POSIX_C_SOURCE=200809L -Werror -Wshadow $(INCLUDES)

# Linker libraries
LDLIBS = -lm

# Output executable path
OUT = $(OUTDIR)/$(TARGET)

# Default rule
all: $(OUT)

$(OUT): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(OUT) $(LDLIBS)

clean:
	rm -f $(OUT)