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
include zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/compiler_depend.make

# Include the progress variables for this target.
include zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/progress.make

# Include the compile flags for this target's objects.
include zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/flags.make

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/codegen:
.PHONY : zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/codegen

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.obj: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/flags.make
zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.obj: /home/don/zephyrproject/zephyr/arch/arm/core/fatal.c
zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.obj: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.obj"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.obj -MF CMakeFiles/arch__arm__core.dir/fatal.c.obj.d -o CMakeFiles/arch__arm__core.dir/fatal.c.obj -c /home/don/zephyrproject/zephyr/arch/arm/core/fatal.c

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/arch__arm__core.dir/fatal.c.i"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/zephyrproject/zephyr/arch/arm/core/fatal.c > CMakeFiles/arch__arm__core.dir/fatal.c.i

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/arch__arm__core.dir/fatal.c.s"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/zephyrproject/zephyr/arch/arm/core/fatal.c -o CMakeFiles/arch__arm__core.dir/fatal.c.s

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.obj: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/flags.make
zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.obj: /home/don/zephyrproject/zephyr/arch/arm/core/nmi.c
zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.obj: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.obj"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.obj -MF CMakeFiles/arch__arm__core.dir/nmi.c.obj.d -o CMakeFiles/arch__arm__core.dir/nmi.c.obj -c /home/don/zephyrproject/zephyr/arch/arm/core/nmi.c

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/arch__arm__core.dir/nmi.c.i"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/zephyrproject/zephyr/arch/arm/core/nmi.c > CMakeFiles/arch__arm__core.dir/nmi.c.i

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/arch__arm__core.dir/nmi.c.s"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/zephyrproject/zephyr/arch/arm/core/nmi.c -o CMakeFiles/arch__arm__core.dir/nmi.c.s

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.obj: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/flags.make
zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.obj: /home/don/zephyrproject/zephyr/arch/arm/core/nmi_on_reset.S
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building ASM object zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.obj"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.obj -c /home/don/zephyrproject/zephyr/arch/arm/core/nmi_on_reset.S

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing ASM source to CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.i"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /home/don/zephyrproject/zephyr/arch/arm/core/nmi_on_reset.S > CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.i

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling ASM source to assembly CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.s"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && /usr/bin/arm-none-eabi-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /home/don/zephyrproject/zephyr/arch/arm/core/nmi_on_reset.S -o CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.s

# Object files for target arch__arm__core
arch__arm__core_OBJECTS = \
"CMakeFiles/arch__arm__core.dir/fatal.c.obj" \
"CMakeFiles/arch__arm__core.dir/nmi.c.obj" \
"CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.obj"

# External object files for target arch__arm__core
arch__arm__core_EXTERNAL_OBJECTS =

zephyr/arch/arch/arm/core/libarch__arm__core.a: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/fatal.c.obj
zephyr/arch/arch/arm/core/libarch__arm__core.a: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi.c.obj
zephyr/arch/arch/arm/core/libarch__arm__core.a: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/nmi_on_reset.S.obj
zephyr/arch/arch/arm/core/libarch__arm__core.a: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/build.make
zephyr/arch/arch/arm/core/libarch__arm__core.a: zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libarch__arm__core.a"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && $(CMAKE_COMMAND) -P CMakeFiles/arch__arm__core.dir/cmake_clean_target.cmake
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/arch__arm__core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/build: zephyr/arch/arch/arm/core/libarch__arm__core.a
.PHONY : zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/build

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/clean:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core && $(CMAKE_COMMAND) -P CMakeFiles/arch__arm__core.dir/cmake_clean.cmake
.PHONY : zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/clean

zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/zephyrproject/zephyr/arch/arm/core /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : zephyr/arch/arch/arm/core/CMakeFiles/arch__arm__core.dir/depend

