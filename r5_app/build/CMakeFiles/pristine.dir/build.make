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

# Utility rule file for pristine.

# Include any custom commands dependencies for this target.
include CMakeFiles/pristine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pristine.dir/progress.make

CMakeFiles/pristine:
	/home/don/zephyrproject/.venv/lib/python3.13/site-packages/cmake/data/bin/cmake -DBINARY_DIR=/home/don/cmpt433/work/as4/Assignment4/r5_app/build -DSOURCE_DIR=/home/don/cmpt433/work/as4/Assignment4/r5_app -P /home/don/zephyrproject/zephyr/cmake/pristine.cmake

CMakeFiles/pristine.dir/codegen:
.PHONY : CMakeFiles/pristine.dir/codegen

pristine: CMakeFiles/pristine
pristine: CMakeFiles/pristine.dir/build.make
.PHONY : pristine

# Rule to build all files generated by this target.
CMakeFiles/pristine.dir/build: pristine
.PHONY : CMakeFiles/pristine.dir/build

CMakeFiles/pristine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pristine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pristine.dir/clean

CMakeFiles/pristine.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/r5_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/cmpt433/work/as4/Assignment4/r5_app /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build /home/don/cmpt433/work/as4/Assignment4/r5_app/build/CMakeFiles/pristine.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/pristine.dir/depend

