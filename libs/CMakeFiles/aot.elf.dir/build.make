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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fanhc/wasm-aot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fanhc/wasm-aot/libs

# Include any dependencies generated for this target.
include CMakeFiles/aot.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/aot.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aot.elf.dir/flags.make

CMakeFiles/aot.elf.dir/src/asm.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/asm.c.o: ../src/asm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/aot.elf.dir/src/asm.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/asm.c.o   -c /home/fanhc/wasm-aot/src/asm.c

CMakeFiles/aot.elf.dir/src/asm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/asm.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/asm.c > CMakeFiles/aot.elf.dir/src/asm.c.i

CMakeFiles/aot.elf.dir/src/asm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/asm.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/asm.c -o CMakeFiles/aot.elf.dir/src/asm.c.s

CMakeFiles/aot.elf.dir/src/compile.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/compile.c.o: ../src/compile.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/aot.elf.dir/src/compile.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/compile.c.o   -c /home/fanhc/wasm-aot/src/compile.c

CMakeFiles/aot.elf.dir/src/compile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/compile.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/compile.c > CMakeFiles/aot.elf.dir/src/compile.c.i

CMakeFiles/aot.elf.dir/src/compile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/compile.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/compile.c -o CMakeFiles/aot.elf.dir/src/compile.c.s

CMakeFiles/aot.elf.dir/src/debug.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/debug.c.o: ../src/debug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/aot.elf.dir/src/debug.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/debug.c.o   -c /home/fanhc/wasm-aot/src/debug.c

CMakeFiles/aot.elf.dir/src/debug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/debug.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/debug.c > CMakeFiles/aot.elf.dir/src/debug.c.i

CMakeFiles/aot.elf.dir/src/debug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/debug.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/debug.c -o CMakeFiles/aot.elf.dir/src/debug.c.s

CMakeFiles/aot.elf.dir/src/instructions.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/instructions.c.o: ../src/instructions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/aot.elf.dir/src/instructions.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/instructions.c.o   -c /home/fanhc/wasm-aot/src/instructions.c

CMakeFiles/aot.elf.dir/src/instructions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/instructions.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/instructions.c > CMakeFiles/aot.elf.dir/src/instructions.c.i

CMakeFiles/aot.elf.dir/src/instructions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/instructions.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/instructions.c -o CMakeFiles/aot.elf.dir/src/instructions.c.s

CMakeFiles/aot.elf.dir/src/main.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/aot.elf.dir/src/main.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/main.c.o   -c /home/fanhc/wasm-aot/src/main.c

CMakeFiles/aot.elf.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/main.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/main.c > CMakeFiles/aot.elf.dir/src/main.c.i

CMakeFiles/aot.elf.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/main.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/main.c -o CMakeFiles/aot.elf.dir/src/main.c.s

CMakeFiles/aot.elf.dir/src/memory.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/memory.c.o: ../src/memory.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/aot.elf.dir/src/memory.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/memory.c.o   -c /home/fanhc/wasm-aot/src/memory.c

CMakeFiles/aot.elf.dir/src/memory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/memory.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/memory.c > CMakeFiles/aot.elf.dir/src/memory.c.i

CMakeFiles/aot.elf.dir/src/memory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/memory.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/memory.c -o CMakeFiles/aot.elf.dir/src/memory.c.s

CMakeFiles/aot.elf.dir/src/parse.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/parse.c.o: ../src/parse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/aot.elf.dir/src/parse.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/parse.c.o   -c /home/fanhc/wasm-aot/src/parse.c

CMakeFiles/aot.elf.dir/src/parse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/parse.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/parse.c > CMakeFiles/aot.elf.dir/src/parse.c.i

CMakeFiles/aot.elf.dir/src/parse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/parse.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/parse.c -o CMakeFiles/aot.elf.dir/src/parse.c.s

CMakeFiles/aot.elf.dir/src/rtc_emit.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/rtc_emit.c.o: ../src/rtc_emit.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/aot.elf.dir/src/rtc_emit.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/rtc_emit.c.o   -c /home/fanhc/wasm-aot/src/rtc_emit.c

CMakeFiles/aot.elf.dir/src/rtc_emit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/rtc_emit.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/rtc_emit.c > CMakeFiles/aot.elf.dir/src/rtc_emit.c.i

CMakeFiles/aot.elf.dir/src/rtc_emit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/rtc_emit.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/rtc_emit.c -o CMakeFiles/aot.elf.dir/src/rtc_emit.c.s

CMakeFiles/aot.elf.dir/src/user_import.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/user_import.c.o: ../src/user_import.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/aot.elf.dir/src/user_import.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/user_import.c.o   -c /home/fanhc/wasm-aot/src/user_import.c

CMakeFiles/aot.elf.dir/src/user_import.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/user_import.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/user_import.c > CMakeFiles/aot.elf.dir/src/user_import.c.i

CMakeFiles/aot.elf.dir/src/user_import.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/user_import.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/user_import.c -o CMakeFiles/aot.elf.dir/src/user_import.c.s

CMakeFiles/aot.elf.dir/src/utils.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/utils.c.o: ../src/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/aot.elf.dir/src/utils.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/utils.c.o   -c /home/fanhc/wasm-aot/src/utils.c

CMakeFiles/aot.elf.dir/src/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/utils.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/utils.c > CMakeFiles/aot.elf.dir/src/utils.c.i

CMakeFiles/aot.elf.dir/src/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/utils.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/utils.c -o CMakeFiles/aot.elf.dir/src/utils.c.s

CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.o: CMakeFiles/aot.elf.dir/flags.make
CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.o: ../src/wkreprog_impl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.o"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.o   -c /home/fanhc/wasm-aot/src/wkreprog_impl.c

CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.i"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fanhc/wasm-aot/src/wkreprog_impl.c > CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.i

CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.s"
	avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fanhc/wasm-aot/src/wkreprog_impl.c -o CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.s

# Object files for target aot.elf
aot_elf_OBJECTS = \
"CMakeFiles/aot.elf.dir/src/asm.c.o" \
"CMakeFiles/aot.elf.dir/src/compile.c.o" \
"CMakeFiles/aot.elf.dir/src/debug.c.o" \
"CMakeFiles/aot.elf.dir/src/instructions.c.o" \
"CMakeFiles/aot.elf.dir/src/main.c.o" \
"CMakeFiles/aot.elf.dir/src/memory.c.o" \
"CMakeFiles/aot.elf.dir/src/parse.c.o" \
"CMakeFiles/aot.elf.dir/src/rtc_emit.c.o" \
"CMakeFiles/aot.elf.dir/src/user_import.c.o" \
"CMakeFiles/aot.elf.dir/src/utils.c.o" \
"CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.o"

# External object files for target aot.elf
aot_elf_EXTERNAL_OBJECTS =

../bin/aot.elf: CMakeFiles/aot.elf.dir/src/asm.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/compile.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/debug.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/instructions.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/main.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/memory.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/parse.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/rtc_emit.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/user_import.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/utils.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/src/wkreprog_impl.c.o
../bin/aot.elf: CMakeFiles/aot.elf.dir/build.make
../bin/aot.elf: CMakeFiles/aot.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fanhc/wasm-aot/libs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C executable ../bin/aot.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aot.elf.dir/link.txt --verbose=$(VERBOSE)
	avr-objdump -D /home/fanhc/wasm-aot/bin/aot.elf > /home/fanhc/wasm-aot/bin/aot.S
	echo dissassemble done
	avr-nm -S -l /home/fanhc/wasm-aot/bin/aot.elf > /home/fanhc/wasm-aot/bin/aot.nm
	echo nmap done

# Rule to build all files generated by this target.
CMakeFiles/aot.elf.dir/build: ../bin/aot.elf

.PHONY : CMakeFiles/aot.elf.dir/build

CMakeFiles/aot.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aot.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aot.elf.dir/clean

CMakeFiles/aot.elf.dir/depend:
	cd /home/fanhc/wasm-aot/libs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fanhc/wasm-aot /home/fanhc/wasm-aot /home/fanhc/wasm-aot/libs /home/fanhc/wasm-aot/libs /home/fanhc/wasm-aot/libs/CMakeFiles/aot.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aot.elf.dir/depend
