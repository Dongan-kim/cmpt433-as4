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

# Utility rule file for offsets_h.

# Include any custom commands dependencies for this target.
include zephyr/CMakeFiles/offsets_h.dir/compiler_depend.make

# Include the progress variables for this target.
include zephyr/CMakeFiles/offsets_h.dir/progress.make

zephyr/CMakeFiles/offsets_h: zephyr/include/generated/zephyr/offsets.h

zephyr/include/generated/zephyr/offsets.h: zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating include/generated/zephyr/offsets.h"
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr && /home/don/zephyrproject/.venv/bin/python /home/don/zephyrproject/zephyr/scripts/build/gen_offset_header.py -i /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj -o /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/include/generated/zephyr/offsets.h

zephyr/CMakeFiles/offsets_h.dir/codegen:
.PHONY : zephyr/CMakeFiles/offsets_h.dir/codegen

offsets_h: zephyr/CMakeFiles/offsets_h
offsets_h: zephyr/include/generated/zephyr/offsets.h
offsets_h: zephyr/CMakeFiles/offsets_h.dir/build.make
.PHONY : offsets_h

# Rule to build all files generated by this target.
zephyr/CMakeFiles/offsets_h.dir/build: offsets_h
.PHONY : zephyr/CMakeFiles/offsets_h.dir/build

zephyr/CMakeFiles/offsets_h.dir/clean:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr && $(CMAKE_COMMAND) -P CMakeFiles/offsets_h.dir/cmake_clean.cmake
.PHONY : zephyr/CMakeFiles/offsets_h.dir/clean

zephyr/CMakeFiles/offsets_h.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/zephyrproject/zephyr /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/CMakeFiles/offsets_h.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : zephyr/CMakeFiles/offsets_h.dir/depend

