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
CMAKE_SOURCE_DIR = /home/don/cmpt433/work/as4/Assignment4/linux_app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/don/cmpt433/work/as4/Assignment4/linux_app/build

# Include any dependencies generated for this target.
include CMakeFiles/find_dot_linux_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/find_dot_linux_app.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/find_dot_linux_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/find_dot_linux_app.dir/flags.make

CMakeFiles/find_dot_linux_app.dir/codegen:
.PHONY : CMakeFiles/find_dot_linux_app.dir/codegen

CMakeFiles/find_dot_linux_app.dir/src/main.c.o: CMakeFiles/find_dot_linux_app.dir/flags.make
CMakeFiles/find_dot_linux_app.dir/src/main.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/src/main.c
CMakeFiles/find_dot_linux_app.dir/src/main.c.o: CMakeFiles/find_dot_linux_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/find_dot_linux_app.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/find_dot_linux_app.dir/src/main.c.o -MF CMakeFiles/find_dot_linux_app.dir/src/main.c.o.d -o CMakeFiles/find_dot_linux_app.dir/src/main.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/src/main.c

CMakeFiles/find_dot_linux_app.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/find_dot_linux_app.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/src/main.c > CMakeFiles/find_dot_linux_app.dir/src/main.c.i

CMakeFiles/find_dot_linux_app.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/find_dot_linux_app.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/src/main.c -o CMakeFiles/find_dot_linux_app.dir/src/main.c.s

CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o: CMakeFiles/find_dot_linux_app.dir/flags.make
CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/src/accelerometer.c
CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o: CMakeFiles/find_dot_linux_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o -MF CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o.d -o CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/src/accelerometer.c

CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/src/accelerometer.c > CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.i

CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/src/accelerometer.c -o CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.s

# Object files for target find_dot_linux_app
find_dot_linux_app_OBJECTS = \
"CMakeFiles/find_dot_linux_app.dir/src/main.c.o" \
"CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o"

# External object files for target find_dot_linux_app
find_dot_linux_app_EXTERNAL_OBJECTS =

find_dot_linux_app: CMakeFiles/find_dot_linux_app.dir/src/main.c.o
find_dot_linux_app: CMakeFiles/find_dot_linux_app.dir/src/accelerometer.c.o
find_dot_linux_app: CMakeFiles/find_dot_linux_app.dir/build.make
find_dot_linux_app: CMakeFiles/find_dot_linux_app.dir/compiler_depend.ts
find_dot_linux_app: CMakeFiles/find_dot_linux_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable find_dot_linux_app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/find_dot_linux_app.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "📦 Copying find_dot_linux_app to ~/cmpt433/public/r5/"
	/home/don/zephyrproject/.venv/lib/python3.13/site-packages/cmake/data/bin/cmake -E make_directory /home/don/cmpt433/public/r5/
	/home/don/zephyrproject/.venv/lib/python3.13/site-packages/cmake/data/bin/cmake -E copy /home/don/cmpt433/work/as4/Assignment4/linux_app/build/find_dot_linux_app /home/don/cmpt433/public/r5/find_dot_linux_app

# Rule to build all files generated by this target.
CMakeFiles/find_dot_linux_app.dir/build: find_dot_linux_app
.PHONY : CMakeFiles/find_dot_linux_app.dir/build

CMakeFiles/find_dot_linux_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/find_dot_linux_app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/find_dot_linux_app.dir/clean

CMakeFiles/find_dot_linux_app.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/linux_app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/linux_app /home/don/cmpt433/work/as4/Assignment4/linux_app /home/don/cmpt433/work/as4/Assignment4/linux_app/build /home/don/cmpt433/work/as4/Assignment4/linux_app/build /home/don/cmpt433/work/as4/Assignment4/linux_app/build/CMakeFiles/find_dot_linux_app.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/find_dot_linux_app.dir/depend

