# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/code-stuff/linux-stuff/ovenkernel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/code-stuff/linux-stuff/ovenkernel

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/user/code-stuff/linux-stuff/ovenkernel/CMakeFiles /home/user/code-stuff/linux-stuff/ovenkernel//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/user/code-stuff/linux-stuff/ovenkernel/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named bootstrap

# Build rule for target.
bootstrap: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bootstrap
.PHONY : bootstrap

# fast build rule for target.
bootstrap/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bootstrap.dir/build.make CMakeFiles/bootstrap.dir/build
.PHONY : bootstrap/fast

#=============================================================================
# Target rules for targets named commonlib

# Build rule for target.
commonlib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 commonlib
.PHONY : commonlib

# fast build rule for target.
commonlib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/commonlib.dir/build.make CMakeFiles/commonlib.dir/build
.PHONY : commonlib/fast

#=============================================================================
# Target rules for targets named ovenkernel

# Build rule for target.
ovenkernel: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ovenkernel
.PHONY : ovenkernel

# fast build rule for target.
ovenkernel/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ovenkernel.dir/build.make CMakeFiles/ovenkernel.dir/build
.PHONY : ovenkernel/fast

#=============================================================================
# Target rules for targets named run

# Build rule for target.
run: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 run
.PHONY : run

# fast build rule for target.
run/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/run.dir/build.make CMakeFiles/run.dir/build
.PHONY : run/fast

#=============================================================================
# Target rules for targets named grub

# Build rule for target.
grub: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 grub
.PHONY : grub

# fast build rule for target.
grub/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/grub.dir/build.make CMakeFiles/grub.dir/build
.PHONY : grub/fast

bootstrap/boot.o: bootstrap/boot.asm.o
.PHONY : bootstrap/boot.o

# target to build an object file
bootstrap/boot.asm.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bootstrap.dir/build.make CMakeFiles/bootstrap.dir/bootstrap/boot.asm.o
.PHONY : bootstrap/boot.asm.o

bootstrap/start.o: bootstrap/start.c.o
.PHONY : bootstrap/start.o

# target to build an object file
bootstrap/start.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bootstrap.dir/build.make CMakeFiles/bootstrap.dir/bootstrap/start.c.o
.PHONY : bootstrap/start.c.o

bootstrap/start.i: bootstrap/start.c.i
.PHONY : bootstrap/start.i

# target to preprocess a source file
bootstrap/start.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bootstrap.dir/build.make CMakeFiles/bootstrap.dir/bootstrap/start.c.i
.PHONY : bootstrap/start.c.i

bootstrap/start.s: bootstrap/start.c.s
.PHONY : bootstrap/start.s

# target to generate assembly for a file
bootstrap/start.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/bootstrap.dir/build.make CMakeFiles/bootstrap.dir/bootstrap/start.c.s
.PHONY : bootstrap/start.c.s

commonlib/terminal.o: commonlib/terminal.c.o
.PHONY : commonlib/terminal.o

# target to build an object file
commonlib/terminal.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/commonlib.dir/build.make CMakeFiles/commonlib.dir/commonlib/terminal.c.o
.PHONY : commonlib/terminal.c.o

commonlib/terminal.i: commonlib/terminal.c.i
.PHONY : commonlib/terminal.i

# target to preprocess a source file
commonlib/terminal.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/commonlib.dir/build.make CMakeFiles/commonlib.dir/commonlib/terminal.c.i
.PHONY : commonlib/terminal.c.i

commonlib/terminal.s: commonlib/terminal.c.s
.PHONY : commonlib/terminal.s

# target to generate assembly for a file
commonlib/terminal.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/commonlib.dir/build.make CMakeFiles/commonlib.dir/commonlib/terminal.c.s
.PHONY : commonlib/terminal.c.s

src/main.o: src/main.c.o
.PHONY : src/main.o

# target to build an object file
src/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ovenkernel.dir/build.make CMakeFiles/ovenkernel.dir/src/main.c.o
.PHONY : src/main.c.o

src/main.i: src/main.c.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ovenkernel.dir/build.make CMakeFiles/ovenkernel.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ovenkernel.dir/build.make CMakeFiles/ovenkernel.dir/src/main.c.s
.PHONY : src/main.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... grub"
	@echo "... run"
	@echo "... bootstrap"
	@echo "... commonlib"
	@echo "... ovenkernel"
	@echo "... bootstrap/boot.o"
	@echo "... bootstrap/start.o"
	@echo "... bootstrap/start.i"
	@echo "... bootstrap/start.s"
	@echo "... commonlib/terminal.o"
	@echo "... commonlib/terminal.i"
	@echo "... commonlib/terminal.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
