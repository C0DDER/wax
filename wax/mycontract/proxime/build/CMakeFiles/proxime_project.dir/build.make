# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /wax/wax/mycontract/proxime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /wax/wax/mycontract/proxime/build

# Utility rule file for proxime_project.

# Include the progress variables for this target.
include CMakeFiles/proxime_project.dir/progress.make

CMakeFiles/proxime_project: CMakeFiles/proxime_project-complete


CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-install
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-mkdir
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-download
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-update
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-patch
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-configure
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-build
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-install
CMakeFiles/proxime_project-complete: proxime_project-prefix/src/proxime_project-stamp/proxime_project-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'proxime_project'"
	/usr/bin/cmake -E make_directory /wax/wax/mycontract/proxime/build/CMakeFiles
	/usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/CMakeFiles/proxime_project-complete
	/usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-done

proxime_project-prefix/src/proxime_project-stamp/proxime_project-install: proxime_project-prefix/src/proxime_project-stamp/proxime_project-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'proxime_project'"
	cd /wax/wax/mycontract/proxime/build/proxime && /usr/bin/cmake -E echo_append
	cd /wax/wax/mycontract/proxime/build/proxime && /usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-install

proxime_project-prefix/src/proxime_project-stamp/proxime_project-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'proxime_project'"
	/usr/bin/cmake -E make_directory /wax/wax/mycontract/proxime/src
	/usr/bin/cmake -E make_directory /wax/wax/mycontract/proxime/build/proxime
	/usr/bin/cmake -E make_directory /wax/wax/mycontract/proxime/build/proxime_project-prefix
	/usr/bin/cmake -E make_directory /wax/wax/mycontract/proxime/build/proxime_project-prefix/tmp
	/usr/bin/cmake -E make_directory /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp
	/usr/bin/cmake -E make_directory /wax/wax/mycontract/proxime/build/proxime_project-prefix/src
	/usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-mkdir

proxime_project-prefix/src/proxime_project-stamp/proxime_project-download: proxime_project-prefix/src/proxime_project-stamp/proxime_project-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'proxime_project'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-download

proxime_project-prefix/src/proxime_project-stamp/proxime_project-update: proxime_project-prefix/src/proxime_project-stamp/proxime_project-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'proxime_project'"
	cd /wax/wax/mycontract/proxime/src && /usr/bin/cmake -E echo_append
	cd /wax/wax/mycontract/proxime/src && /usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-update

proxime_project-prefix/src/proxime_project-stamp/proxime_project-patch: proxime_project-prefix/src/proxime_project-stamp/proxime_project-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'proxime_project'"
	cd /wax/wax/mycontract/proxime/src && /usr/bin/cmake -E echo_append
	cd /wax/wax/mycontract/proxime/src && /usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-patch

proxime_project-prefix/src/proxime_project-stamp/proxime_project-configure: proxime_project-prefix/tmp/proxime_project-cfgcmd.txt
proxime_project-prefix/src/proxime_project-stamp/proxime_project-configure: proxime_project-prefix/src/proxime_project-stamp/proxime_project-update
proxime_project-prefix/src/proxime_project-stamp/proxime_project-configure: proxime_project-prefix/src/proxime_project-stamp/proxime_project-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'proxime_project'"
	cd /wax/wax/mycontract/proxime/build/proxime && /usr/bin/cmake -DCMAKE_TOOLCHAIN_FILE=/usr/local/eosio.cdt/lib/cmake/eosio.cdt/EosioWasmToolchain.cmake "-GUnix Makefiles" /wax/wax/mycontract/proxime/src
	cd /wax/wax/mycontract/proxime/build/proxime && /usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-configure

proxime_project-prefix/src/proxime_project-stamp/proxime_project-build: proxime_project-prefix/src/proxime_project-stamp/proxime_project-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'proxime_project'"
	cd /wax/wax/mycontract/proxime/build/proxime && $(MAKE)

proxime_project-prefix/src/proxime_project-stamp/proxime_project-test: proxime_project-prefix/src/proxime_project-stamp/proxime_project-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/wax/wax/mycontract/proxime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'proxime_project'"
	cd /wax/wax/mycontract/proxime/build/proxime && /usr/bin/cmake -E echo_append
	cd /wax/wax/mycontract/proxime/build/proxime && /usr/bin/cmake -E touch /wax/wax/mycontract/proxime/build/proxime_project-prefix/src/proxime_project-stamp/proxime_project-test

proxime_project: CMakeFiles/proxime_project
proxime_project: CMakeFiles/proxime_project-complete
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-install
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-mkdir
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-download
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-update
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-patch
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-configure
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-build
proxime_project: proxime_project-prefix/src/proxime_project-stamp/proxime_project-test
proxime_project: CMakeFiles/proxime_project.dir/build.make

.PHONY : proxime_project

# Rule to build all files generated by this target.
CMakeFiles/proxime_project.dir/build: proxime_project

.PHONY : CMakeFiles/proxime_project.dir/build

CMakeFiles/proxime_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/proxime_project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/proxime_project.dir/clean

CMakeFiles/proxime_project.dir/depend:
	cd /wax/wax/mycontract/proxime/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wax/wax/mycontract/proxime /wax/wax/mycontract/proxime /wax/wax/mycontract/proxime/build /wax/wax/mycontract/proxime/build /wax/wax/mycontract/proxime/build/CMakeFiles/proxime_project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/proxime_project.dir/depend

