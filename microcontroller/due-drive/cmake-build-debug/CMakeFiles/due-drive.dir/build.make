# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/matthew/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/171.4073.41/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/matthew/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/171.4073.41/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/matthew/projects/due-drive

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matthew/projects/due-drive/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/due-drive.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/due-drive.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/due-drive.dir/flags.make

CMakeFiles/due-drive.dir/src/main.cpp.o: CMakeFiles/due-drive.dir/flags.make
CMakeFiles/due-drive.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthew/projects/due-drive/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/due-drive.dir/src/main.cpp.o"
	/home/matthew/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/due-drive.dir/src/main.cpp.o -c /home/matthew/projects/due-drive/src/main.cpp

CMakeFiles/due-drive.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/due-drive.dir/src/main.cpp.i"
	/home/matthew/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthew/projects/due-drive/src/main.cpp > CMakeFiles/due-drive.dir/src/main.cpp.i

CMakeFiles/due-drive.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/due-drive.dir/src/main.cpp.s"
	/home/matthew/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthew/projects/due-drive/src/main.cpp -o CMakeFiles/due-drive.dir/src/main.cpp.s

CMakeFiles/due-drive.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/due-drive.dir/src/main.cpp.o.requires

CMakeFiles/due-drive.dir/src/main.cpp.o.provides: CMakeFiles/due-drive.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/due-drive.dir/build.make CMakeFiles/due-drive.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/due-drive.dir/src/main.cpp.o.provides

CMakeFiles/due-drive.dir/src/main.cpp.o.provides.build: CMakeFiles/due-drive.dir/src/main.cpp.o


# Object files for target due-drive
due__drive_OBJECTS = \
"CMakeFiles/due-drive.dir/src/main.cpp.o"

# External object files for target due-drive
due__drive_EXTERNAL_OBJECTS =

due-drive: CMakeFiles/due-drive.dir/src/main.cpp.o
due-drive: CMakeFiles/due-drive.dir/build.make
due-drive: CMakeFiles/due-drive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthew/projects/due-drive/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable due-drive"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/due-drive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/due-drive.dir/build: due-drive

.PHONY : CMakeFiles/due-drive.dir/build

CMakeFiles/due-drive.dir/requires: CMakeFiles/due-drive.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/due-drive.dir/requires

CMakeFiles/due-drive.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/due-drive.dir/cmake_clean.cmake
.PHONY : CMakeFiles/due-drive.dir/clean

CMakeFiles/due-drive.dir/depend:
	cd /home/matthew/projects/due-drive/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthew/projects/due-drive /home/matthew/projects/due-drive /home/matthew/projects/due-drive/cmake-build-debug /home/matthew/projects/due-drive/cmake-build-debug /home/matthew/projects/due-drive/cmake-build-debug/CMakeFiles/due-drive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/due-drive.dir/depend
