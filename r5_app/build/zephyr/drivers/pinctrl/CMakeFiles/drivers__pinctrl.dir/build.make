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
include zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/compiler_depend.make

# Include the progress variables for this target.
include zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/progress.make

# Include the compile flags for this target's objects.
include zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/flags.make

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/codegen:
.PHONY : zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/codegen

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.obj: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/flags.make
zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.obj: /home/don/zephyrproject/zephyr/drivers/pinctrl/common.c
zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.obj: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.obj"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.obj -MF CMakeFiles/drivers__pinctrl.dir/common.c.obj.d -o CMakeFiles/drivers__pinctrl.dir/common.c.obj -c /home/don/zephyrproject/zephyr/drivers/pinctrl/common.c

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/drivers__pinctrl.dir/common.c.i"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/zephyrproject/zephyr/drivers/pinctrl/common.c > CMakeFiles/drivers__pinctrl.dir/common.c.i

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/drivers__pinctrl.dir/common.c.s"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/zephyrproject/zephyr/drivers/pinctrl/common.c -o CMakeFiles/drivers__pinctrl.dir/common.c.s

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/flags.make
zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj: /home/don/zephyrproject/zephyr/drivers/pinctrl/pinctrl_ti_k3.c
zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj -MF CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj.d -o CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj -c /home/don/zephyrproject/zephyr/drivers/pinctrl/pinctrl_ti_k3.c

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.i"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/zephyrproject/zephyr/drivers/pinctrl/pinctrl_ti_k3.c > CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.i

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.s"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/zephyrproject/zephyr/drivers/pinctrl/pinctrl_ti_k3.c -o CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.s

# Object files for target drivers__pinctrl
drivers__pinctrl_OBJECTS = \
"CMakeFiles/drivers__pinctrl.dir/common.c.obj" \
"CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj"

# External object files for target drivers__pinctrl
drivers__pinctrl_EXTERNAL_OBJECTS =

zephyr/drivers/pinctrl/libdrivers__pinctrl.a: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/common.c.obj
zephyr/drivers/pinctrl/libdrivers__pinctrl.a: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/pinctrl_ti_k3.c.obj
zephyr/drivers/pinctrl/libdrivers__pinctrl.a: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/build.make
zephyr/drivers/pinctrl/libdrivers__pinctrl.a: zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libdrivers__pinctrl.a"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && $(CMAKE_COMMAND) -P CMakeFiles/drivers__pinctrl.dir/cmake_clean_target.cmake
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers__pinctrl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/build: zephyr/drivers/pinctrl/libdrivers__pinctrl.a
.PHONY : zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/build

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/clean:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl && $(CMAKE_COMMAND) -P CMakeFiles/drivers__pinctrl.dir/cmake_clean.cmake
.PHONY : zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/clean

zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/zephyrproject/zephyr/drivers/pinctrl /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : zephyr/drivers/pinctrl/CMakeFiles/drivers__pinctrl.dir/depend

