# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shubhamrathod/CLionProjects/TCP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TCP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TCP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TCP.dir/flags.make

CMakeFiles/TCP.dir/main.c.o: CMakeFiles/TCP.dir/flags.make
CMakeFiles/TCP.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TCP.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TCP.dir/main.c.o   -c /Users/shubhamrathod/CLionProjects/TCP/main.c

CMakeFiles/TCP.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TCP.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/shubhamrathod/CLionProjects/TCP/main.c > CMakeFiles/TCP.dir/main.c.i

CMakeFiles/TCP.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TCP.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/shubhamrathod/CLionProjects/TCP/main.c -o CMakeFiles/TCP.dir/main.c.s

CMakeFiles/TCP.dir/Server.c.o: CMakeFiles/TCP.dir/flags.make
CMakeFiles/TCP.dir/Server.c.o: Server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/TCP.dir/Server.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TCP.dir/Server.c.o   -c /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/Server.c

CMakeFiles/TCP.dir/Server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TCP.dir/Server.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/Server.c > CMakeFiles/TCP.dir/Server.c.i

CMakeFiles/TCP.dir/Server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TCP.dir/Server.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/Server.c -o CMakeFiles/TCP.dir/Server.c.s

CMakeFiles/TCP.dir/Client.c.o: CMakeFiles/TCP.dir/flags.make
CMakeFiles/TCP.dir/Client.c.o: Client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/TCP.dir/Client.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TCP.dir/Client.c.o   -c /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/Client.c

CMakeFiles/TCP.dir/Client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TCP.dir/Client.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/Client.c > CMakeFiles/TCP.dir/Client.c.i

CMakeFiles/TCP.dir/Client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TCP.dir/Client.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/Client.c -o CMakeFiles/TCP.dir/Client.c.s

# Object files for target TCP
TCP_OBJECTS = \
"CMakeFiles/TCP.dir/main.c.o" \
"CMakeFiles/TCP.dir/Server.c.o" \
"CMakeFiles/TCP.dir/Client.c.o"

# External object files for target TCP
TCP_EXTERNAL_OBJECTS =

TCP: CMakeFiles/TCP.dir/main.c.o
TCP: CMakeFiles/TCP.dir/Server.c.o
TCP: CMakeFiles/TCP.dir/Client.c.o
TCP: CMakeFiles/TCP.dir/build.make
TCP: CMakeFiles/TCP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable TCP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TCP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TCP.dir/build: TCP

.PHONY : CMakeFiles/TCP.dir/build

CMakeFiles/TCP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TCP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TCP.dir/clean

CMakeFiles/TCP.dir/depend:
	cd /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shubhamrathod/CLionProjects/TCP /Users/shubhamrathod/CLionProjects/TCP /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug /Users/shubhamrathod/CLionProjects/TCP/cmake-build-debug/CMakeFiles/TCP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TCP.dir/depend
