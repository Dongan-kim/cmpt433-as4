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
CMAKE_SOURCE_DIR = /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build

# Include any dependencies generated for this target.
include CMakeFiles/lgpio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lgpio.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lgpio.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lgpio.dir/flags.make

CMakeFiles/lgpio.dir/codegen:
.PHONY : CMakeFiles/lgpio.dir/codegen

CMakeFiles/lgpio.dir/lgCtx.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgCtx.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgCtx.c
CMakeFiles/lgpio.dir/lgCtx.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lgpio.dir/lgCtx.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgCtx.c.o -MF CMakeFiles/lgpio.dir/lgCtx.c.o.d -o CMakeFiles/lgpio.dir/lgCtx.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgCtx.c

CMakeFiles/lgpio.dir/lgCtx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgCtx.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgCtx.c > CMakeFiles/lgpio.dir/lgCtx.c.i

CMakeFiles/lgpio.dir/lgCtx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgCtx.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgCtx.c -o CMakeFiles/lgpio.dir/lgCtx.c.s

CMakeFiles/lgpio.dir/lgDbg.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgDbg.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgDbg.c
CMakeFiles/lgpio.dir/lgDbg.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lgpio.dir/lgDbg.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgDbg.c.o -MF CMakeFiles/lgpio.dir/lgDbg.c.o.d -o CMakeFiles/lgpio.dir/lgDbg.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgDbg.c

CMakeFiles/lgpio.dir/lgDbg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgDbg.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgDbg.c > CMakeFiles/lgpio.dir/lgDbg.c.i

CMakeFiles/lgpio.dir/lgDbg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgDbg.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgDbg.c -o CMakeFiles/lgpio.dir/lgDbg.c.s

CMakeFiles/lgpio.dir/lgErr.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgErr.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgErr.c
CMakeFiles/lgpio.dir/lgErr.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/lgpio.dir/lgErr.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgErr.c.o -MF CMakeFiles/lgpio.dir/lgErr.c.o.d -o CMakeFiles/lgpio.dir/lgErr.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgErr.c

CMakeFiles/lgpio.dir/lgErr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgErr.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgErr.c > CMakeFiles/lgpio.dir/lgErr.c.i

CMakeFiles/lgpio.dir/lgErr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgErr.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgErr.c -o CMakeFiles/lgpio.dir/lgErr.c.s

CMakeFiles/lgpio.dir/lgGpio.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgGpio.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgGpio.c
CMakeFiles/lgpio.dir/lgGpio.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/lgpio.dir/lgGpio.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgGpio.c.o -MF CMakeFiles/lgpio.dir/lgGpio.c.o.d -o CMakeFiles/lgpio.dir/lgGpio.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgGpio.c

CMakeFiles/lgpio.dir/lgGpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgGpio.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgGpio.c > CMakeFiles/lgpio.dir/lgGpio.c.i

CMakeFiles/lgpio.dir/lgGpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgGpio.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgGpio.c -o CMakeFiles/lgpio.dir/lgGpio.c.s

CMakeFiles/lgpio.dir/lgHdl.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgHdl.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgHdl.c
CMakeFiles/lgpio.dir/lgHdl.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/lgpio.dir/lgHdl.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgHdl.c.o -MF CMakeFiles/lgpio.dir/lgHdl.c.o.d -o CMakeFiles/lgpio.dir/lgHdl.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgHdl.c

CMakeFiles/lgpio.dir/lgHdl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgHdl.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgHdl.c > CMakeFiles/lgpio.dir/lgHdl.c.i

CMakeFiles/lgpio.dir/lgHdl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgHdl.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgHdl.c -o CMakeFiles/lgpio.dir/lgHdl.c.s

CMakeFiles/lgpio.dir/lgI2C.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgI2C.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgI2C.c
CMakeFiles/lgpio.dir/lgI2C.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/lgpio.dir/lgI2C.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgI2C.c.o -MF CMakeFiles/lgpio.dir/lgI2C.c.o.d -o CMakeFiles/lgpio.dir/lgI2C.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgI2C.c

CMakeFiles/lgpio.dir/lgI2C.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgI2C.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgI2C.c > CMakeFiles/lgpio.dir/lgI2C.c.i

CMakeFiles/lgpio.dir/lgI2C.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgI2C.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgI2C.c -o CMakeFiles/lgpio.dir/lgI2C.c.s

CMakeFiles/lgpio.dir/lgNotify.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgNotify.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgNotify.c
CMakeFiles/lgpio.dir/lgNotify.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/lgpio.dir/lgNotify.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgNotify.c.o -MF CMakeFiles/lgpio.dir/lgNotify.c.o.d -o CMakeFiles/lgpio.dir/lgNotify.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgNotify.c

CMakeFiles/lgpio.dir/lgNotify.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgNotify.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgNotify.c > CMakeFiles/lgpio.dir/lgNotify.c.i

CMakeFiles/lgpio.dir/lgNotify.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgNotify.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgNotify.c -o CMakeFiles/lgpio.dir/lgNotify.c.s

CMakeFiles/lgpio.dir/lgPthAlerts.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgPthAlerts.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthAlerts.c
CMakeFiles/lgpio.dir/lgPthAlerts.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/lgpio.dir/lgPthAlerts.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgPthAlerts.c.o -MF CMakeFiles/lgpio.dir/lgPthAlerts.c.o.d -o CMakeFiles/lgpio.dir/lgPthAlerts.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthAlerts.c

CMakeFiles/lgpio.dir/lgPthAlerts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgPthAlerts.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthAlerts.c > CMakeFiles/lgpio.dir/lgPthAlerts.c.i

CMakeFiles/lgpio.dir/lgPthAlerts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgPthAlerts.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthAlerts.c -o CMakeFiles/lgpio.dir/lgPthAlerts.c.s

CMakeFiles/lgpio.dir/lgPthTx.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgPthTx.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthTx.c
CMakeFiles/lgpio.dir/lgPthTx.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/lgpio.dir/lgPthTx.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgPthTx.c.o -MF CMakeFiles/lgpio.dir/lgPthTx.c.o.d -o CMakeFiles/lgpio.dir/lgPthTx.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthTx.c

CMakeFiles/lgpio.dir/lgPthTx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgPthTx.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthTx.c > CMakeFiles/lgpio.dir/lgPthTx.c.i

CMakeFiles/lgpio.dir/lgPthTx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgPthTx.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgPthTx.c -o CMakeFiles/lgpio.dir/lgPthTx.c.s

CMakeFiles/lgpio.dir/lgSerial.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgSerial.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSerial.c
CMakeFiles/lgpio.dir/lgSerial.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/lgpio.dir/lgSerial.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgSerial.c.o -MF CMakeFiles/lgpio.dir/lgSerial.c.o.d -o CMakeFiles/lgpio.dir/lgSerial.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSerial.c

CMakeFiles/lgpio.dir/lgSerial.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgSerial.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSerial.c > CMakeFiles/lgpio.dir/lgSerial.c.i

CMakeFiles/lgpio.dir/lgSerial.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgSerial.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSerial.c -o CMakeFiles/lgpio.dir/lgSerial.c.s

CMakeFiles/lgpio.dir/lgSPI.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgSPI.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSPI.c
CMakeFiles/lgpio.dir/lgSPI.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/lgpio.dir/lgSPI.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgSPI.c.o -MF CMakeFiles/lgpio.dir/lgSPI.c.o.d -o CMakeFiles/lgpio.dir/lgSPI.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSPI.c

CMakeFiles/lgpio.dir/lgSPI.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgSPI.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSPI.c > CMakeFiles/lgpio.dir/lgSPI.c.i

CMakeFiles/lgpio.dir/lgSPI.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgSPI.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgSPI.c -o CMakeFiles/lgpio.dir/lgSPI.c.s

CMakeFiles/lgpio.dir/lgThread.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgThread.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgThread.c
CMakeFiles/lgpio.dir/lgThread.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/lgpio.dir/lgThread.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgThread.c.o -MF CMakeFiles/lgpio.dir/lgThread.c.o.d -o CMakeFiles/lgpio.dir/lgThread.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgThread.c

CMakeFiles/lgpio.dir/lgThread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgThread.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgThread.c > CMakeFiles/lgpio.dir/lgThread.c.i

CMakeFiles/lgpio.dir/lgThread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgThread.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgThread.c -o CMakeFiles/lgpio.dir/lgThread.c.s

CMakeFiles/lgpio.dir/lgUtil.c.o: CMakeFiles/lgpio.dir/flags.make
CMakeFiles/lgpio.dir/lgUtil.c.o: /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgUtil.c
CMakeFiles/lgpio.dir/lgUtil.c.o: CMakeFiles/lgpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/lgpio.dir/lgUtil.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/lgpio.dir/lgUtil.c.o -MF CMakeFiles/lgpio.dir/lgUtil.c.o.d -o CMakeFiles/lgpio.dir/lgUtil.c.o -c /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgUtil.c

CMakeFiles/lgpio.dir/lgUtil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/lgpio.dir/lgUtil.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgUtil.c > CMakeFiles/lgpio.dir/lgUtil.c.i

CMakeFiles/lgpio.dir/lgUtil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/lgpio.dir/lgUtil.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/lgUtil.c -o CMakeFiles/lgpio.dir/lgUtil.c.s

# Object files for target lgpio
lgpio_OBJECTS = \
"CMakeFiles/lgpio.dir/lgCtx.c.o" \
"CMakeFiles/lgpio.dir/lgDbg.c.o" \
"CMakeFiles/lgpio.dir/lgErr.c.o" \
"CMakeFiles/lgpio.dir/lgGpio.c.o" \
"CMakeFiles/lgpio.dir/lgHdl.c.o" \
"CMakeFiles/lgpio.dir/lgI2C.c.o" \
"CMakeFiles/lgpio.dir/lgNotify.c.o" \
"CMakeFiles/lgpio.dir/lgPthAlerts.c.o" \
"CMakeFiles/lgpio.dir/lgPthTx.c.o" \
"CMakeFiles/lgpio.dir/lgSerial.c.o" \
"CMakeFiles/lgpio.dir/lgSPI.c.o" \
"CMakeFiles/lgpio.dir/lgThread.c.o" \
"CMakeFiles/lgpio.dir/lgUtil.c.o"

# External object files for target lgpio
lgpio_EXTERNAL_OBJECTS =

liblgpio.a: CMakeFiles/lgpio.dir/lgCtx.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgDbg.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgErr.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgGpio.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgHdl.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgI2C.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgNotify.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgPthAlerts.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgPthTx.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgSerial.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgSPI.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgThread.c.o
liblgpio.a: CMakeFiles/lgpio.dir/lgUtil.c.o
liblgpio.a: CMakeFiles/lgpio.dir/build.make
liblgpio.a: CMakeFiles/lgpio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library liblgpio.a"
	$(CMAKE_COMMAND) -P CMakeFiles/lgpio.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lgpio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lgpio.dir/build: liblgpio.a
.PHONY : CMakeFiles/lgpio.dir/build

CMakeFiles/lgpio.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lgpio.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lgpio.dir/clean

CMakeFiles/lgpio.dir/depend:
	cd /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build /home/don/cmpt433/work/as4/Assignment4/linux_app/lgpio/build/CMakeFiles/lgpio.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/lgpio.dir/depend

