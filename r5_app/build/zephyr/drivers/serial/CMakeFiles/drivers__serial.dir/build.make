# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/don/zephyrproject/.venv/lib/python3.13/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/don/zephyrproject/.venv/lib/python3.13/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/don/cmpt433/work/as4/Assignment4/r5_app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/don/cmpt433/work/as4/Assignment4/r5_app/build

# Include any dependencies generated for this target.
include zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/compiler_depend.make

# Include the progress variables for this target.
include zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/progress.make

# Include the compile flags for this target's objects.
include zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/flags.make

zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/codegen:
.PHONY : zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/codegen

zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj: zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/flags.make
zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj: /home/don/zephyrproject/zephyr/drivers/serial/uart_ns16550.c
zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj: zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj -MF CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj.d -o CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj -c /home/don/zephyrproject/zephyr/drivers/serial/uart_ns16550.c

zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/drivers__serial.dir/uart_ns16550.c.i"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/zephyrproject/zephyr/drivers/serial/uart_ns16550.c > CMakeFiles/drivers__serial.dir/uart_ns16550.c.i

zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/drivers__serial.dir/uart_ns16550.c.s"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/zephyrproject/zephyr/drivers/serial/uart_ns16550.c -o CMakeFiles/drivers__serial.dir/uart_ns16550.c.s

# Object files for target drivers__serial
drivers__serial_OBJECTS = \
"CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj"

# External object files for target drivers__serial
drivers__serial_EXTERNAL_OBJECTS =

zephyr/drivers/serial/libdrivers__serial.a: zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/uart_ns16550.c.obj
zephyr/drivers/serial/libdrivers__serial.a: zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/build.make
zephyr/drivers/serial/libdrivers__serial.a: zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libdrivers__serial.a"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial && $(CMAKE_COMMAND) -P CMakeFiles/drivers__serial.dir/cmake_clean_target.cmake
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers__serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/build: zephyr/drivers/serial/libdrivers__serial.a
.PHONY : zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/build

zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/clean:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial && $(CMAKE_COMMAND) -P CMakeFiles/drivers__serial.dir/cmake_clean.cmake
.PHONY : zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/clean

zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/zephyrproject/zephyr/drivers/serial /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : zephyr/drivers/serial/CMakeFiles/drivers__serial.dir/depend

