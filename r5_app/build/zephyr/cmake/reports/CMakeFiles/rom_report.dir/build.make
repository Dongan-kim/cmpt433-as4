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

# Utility rule file for rom_report.

# Include any custom commands dependencies for this target.
include zephyr/cmake/reports/CMakeFiles/rom_report.dir/compiler_depend.make

# Include the progress variables for this target.
include zephyr/cmake/reports/CMakeFiles/rom_report.dir/progress.make

zephyr/cmake/reports/CMakeFiles/rom_report: zephyr/zephyr.elf
	/home/don/zephyrproject/.venv/bin/python /home/don/zephyrproject/zephyr/scripts/footprint/size_report -k /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/zephyr.elf -z /home/don/zephyrproject/zephyr -o /home/don/cmpt433/work/as4/Assignment4/r5_app/build --workspace=/home/don/zephyrproject -d 99 rom

zephyr/cmake/reports/CMakeFiles/rom_report.dir/codegen:
.PHONY : zephyr/cmake/reports/CMakeFiles/rom_report.dir/codegen

rom_report: zephyr/cmake/reports/CMakeFiles/rom_report
rom_report: zephyr/cmake/reports/CMakeFiles/rom_report.dir/build.make
.PHONY : rom_report

# Rule to build all files generated by this target.
zephyr/cmake/reports/CMakeFiles/rom_report.dir/build: rom_report
.PHONY : zephyr/cmake/reports/CMakeFiles/rom_report.dir/build

zephyr/cmake/reports/CMakeFiles/rom_report.dir/clean:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/cmake/reports && $(CMAKE_COMMAND) -P CMakeFiles/rom_report.dir/cmake_clean.cmake
.PHONY : zephyr/cmake/reports/CMakeFiles/rom_report.dir/clean

zephyr/cmake/reports/CMakeFiles/rom_report.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/zephyrproject/zephyr/cmake/reports /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/cmake/reports /home/don/cmpt433/work/as4/Assignment4/r5_app/build/zephyr/cmake/reports/CMakeFiles/rom_report.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : zephyr/cmake/reports/CMakeFiles/rom_report.dir/depend

