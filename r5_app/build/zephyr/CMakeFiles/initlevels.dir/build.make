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

# Utility rule file for initlevels.

# Include any custom commands dependencies for this target.
include zephyr/CMakeFiles/initlevels.dir/compiler_depend.make

# Include the progress variables for this target.
include zephyr/CMakeFiles/initlevels.dir/progress.make

zephyr/CMakeFiles/initlevels: zephyr/zephyr.elf
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr && /home/don/zephyrproject/.venv/bin/python /home/don/zephyrproject/zephyr/scripts/build/check_init_priorities.py --elf-file=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/zephyr.elf --initlevels

zephyr/CMakeFiles/initlevels.dir/codegen:
.PHONY : zephyr/CMakeFiles/initlevels.dir/codegen

initlevels: zephyr/CMakeFiles/initlevels
initlevels: zephyr/CMakeFiles/initlevels.dir/build.make
.PHONY : initlevels

# Rule to build all files generated by this target.
zephyr/CMakeFiles/initlevels.dir/build: initlevels
.PHONY : zephyr/CMakeFiles/initlevels.dir/build

zephyr/CMakeFiles/initlevels.dir/clean:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr && $(CMAKE_COMMAND) -P CMakeFiles/initlevels.dir/cmake_clean.cmake
.PHONY : zephyr/CMakeFiles/initlevels.dir/clean

zephyr/CMakeFiles/initlevels.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/zephyrproject/zephyr /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/CMakeFiles/initlevels.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : zephyr/CMakeFiles/initlevels.dir/depend

