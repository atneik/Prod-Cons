# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /opt/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/atneik/dev/jiit/sp/ProdCons/newNew

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/atneik/dev/jiit/sp/ProdCons/newNew/build

# Include any dependencies generated for this target.
include src/CMakeFiles/Shared.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Shared.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Shared.dir/flags.make

src/CMakeFiles/Shared.dir/shared.c.o: src/CMakeFiles/Shared.dir/flags.make
src/CMakeFiles/Shared.dir/shared.c.o: ../src/shared.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/Shared.dir/shared.c.o"
	cd /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Shared.dir/shared.c.o   -c /Users/atneik/dev/jiit/sp/ProdCons/newNew/src/shared.c

src/CMakeFiles/Shared.dir/shared.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Shared.dir/shared.c.i"
	cd /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /Users/atneik/dev/jiit/sp/ProdCons/newNew/src/shared.c > CMakeFiles/Shared.dir/shared.c.i

src/CMakeFiles/Shared.dir/shared.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Shared.dir/shared.c.s"
	cd /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /Users/atneik/dev/jiit/sp/ProdCons/newNew/src/shared.c -o CMakeFiles/Shared.dir/shared.c.s

src/CMakeFiles/Shared.dir/shared.c.o.requires:
.PHONY : src/CMakeFiles/Shared.dir/shared.c.o.requires

src/CMakeFiles/Shared.dir/shared.c.o.provides: src/CMakeFiles/Shared.dir/shared.c.o.requires
	$(MAKE) -f src/CMakeFiles/Shared.dir/build.make src/CMakeFiles/Shared.dir/shared.c.o.provides.build
.PHONY : src/CMakeFiles/Shared.dir/shared.c.o.provides

src/CMakeFiles/Shared.dir/shared.c.o.provides.build: src/CMakeFiles/Shared.dir/shared.c.o

# Object files for target Shared
Shared_OBJECTS = \
"CMakeFiles/Shared.dir/shared.c.o"

# External object files for target Shared
Shared_EXTERNAL_OBJECTS =

src/libShared.a: src/CMakeFiles/Shared.dir/shared.c.o
src/libShared.a: src/CMakeFiles/Shared.dir/build.make
src/libShared.a: src/CMakeFiles/Shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libShared.a"
	cd /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Shared.dir/cmake_clean_target.cmake
	cd /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Shared.dir/build: src/libShared.a
.PHONY : src/CMakeFiles/Shared.dir/build

src/CMakeFiles/Shared.dir/requires: src/CMakeFiles/Shared.dir/shared.c.o.requires
.PHONY : src/CMakeFiles/Shared.dir/requires

src/CMakeFiles/Shared.dir/clean:
	cd /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Shared.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Shared.dir/clean

src/CMakeFiles/Shared.dir/depend:
	cd /Users/atneik/dev/jiit/sp/ProdCons/newNew/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/atneik/dev/jiit/sp/ProdCons/newNew /Users/atneik/dev/jiit/sp/ProdCons/newNew/src /Users/atneik/dev/jiit/sp/ProdCons/newNew/build /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src /Users/atneik/dev/jiit/sp/ProdCons/newNew/build/src/CMakeFiles/Shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Shared.dir/depend

