# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /cygdrive/c/Users/lenovo/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/lenovo/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/d/NJU/luogu/2-7 dfs"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/NJU/luogu/2-7 dfs/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/2_7_dfs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/2_7_dfs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2_7_dfs.dir/flags.make

CMakeFiles/2_7_dfs.dir/main.cpp.o: CMakeFiles/2_7_dfs.dir/flags.make
CMakeFiles/2_7_dfs.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/NJU/luogu/2-7 dfs/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2_7_dfs.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/2_7_dfs.dir/main.cpp.o -c "/cygdrive/d/NJU/luogu/2-7 dfs/main.cpp"

CMakeFiles/2_7_dfs.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2_7_dfs.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/d/NJU/luogu/2-7 dfs/main.cpp" > CMakeFiles/2_7_dfs.dir/main.cpp.i

CMakeFiles/2_7_dfs.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2_7_dfs.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/d/NJU/luogu/2-7 dfs/main.cpp" -o CMakeFiles/2_7_dfs.dir/main.cpp.s

CMakeFiles/2_7_dfs.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/2_7_dfs.dir/main.cpp.o.requires

CMakeFiles/2_7_dfs.dir/main.cpp.o.provides: CMakeFiles/2_7_dfs.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/2_7_dfs.dir/build.make CMakeFiles/2_7_dfs.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/2_7_dfs.dir/main.cpp.o.provides

CMakeFiles/2_7_dfs.dir/main.cpp.o.provides.build: CMakeFiles/2_7_dfs.dir/main.cpp.o


# Object files for target 2_7_dfs
2_7_dfs_OBJECTS = \
"CMakeFiles/2_7_dfs.dir/main.cpp.o"

# External object files for target 2_7_dfs
2_7_dfs_EXTERNAL_OBJECTS =

2_7_dfs.exe: CMakeFiles/2_7_dfs.dir/main.cpp.o
2_7_dfs.exe: CMakeFiles/2_7_dfs.dir/build.make
2_7_dfs.exe: CMakeFiles/2_7_dfs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/NJU/luogu/2-7 dfs/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2_7_dfs.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2_7_dfs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2_7_dfs.dir/build: 2_7_dfs.exe

.PHONY : CMakeFiles/2_7_dfs.dir/build

CMakeFiles/2_7_dfs.dir/requires: CMakeFiles/2_7_dfs.dir/main.cpp.o.requires

.PHONY : CMakeFiles/2_7_dfs.dir/requires

CMakeFiles/2_7_dfs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2_7_dfs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2_7_dfs.dir/clean

CMakeFiles/2_7_dfs.dir/depend:
	cd "/cygdrive/d/NJU/luogu/2-7 dfs/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/NJU/luogu/2-7 dfs" "/cygdrive/d/NJU/luogu/2-7 dfs" "/cygdrive/d/NJU/luogu/2-7 dfs/cmake-build-debug" "/cygdrive/d/NJU/luogu/2-7 dfs/cmake-build-debug" "/cygdrive/d/NJU/luogu/2-7 dfs/cmake-build-debug/CMakeFiles/2_7_dfs.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/2_7_dfs.dir/depend

