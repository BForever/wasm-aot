cmake_minimum_required(VERSION 3.16)

PROJECT(benchnative)


set (CMAKE_C_COMPILER "avr-gcc")
set (CMAKE_CXX_COMPILER "avr-g++")
#-Werror
add_compile_options(-mmcu=atmega128 -O2 -finline-limit-0 -ggdb -Wall  -std=gnu99 -fdata-sections -ffunction-sections)
set (CMAKE_EXE_LINKER_FLAGS "-mmcu=atmega128 \
-Wl,--gc-sections \
")
# -Wl,--defsym=__heap_start=0x802000,--defsym=__heap_end=0x803fff")


#head file path
INCLUDE_DIRECTORIES(
.
)
#source directory
# AUX_SOURCE_DIRECTORY(. DIR_SRCS)

SET(binsrch
benchmark.c
binsrch.c
)

SET(bsort
benchmark.c
bsort.c
)

SET(fillarray
benchmark.c
fillarray.c
)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR})

ADD_EXECUTABLE(binsrch.elf ${binsrch})
ADD_EXECUTABLE(bsort.elf ${bsort})
ADD_EXECUTABLE(fillarray.elf ${fillarray})
add_custom_command(
    TARGET binsrch.elf
    POST_BUILD
    COMMAND avr-objdump -D ${EXECUTABLE_OUTPUT_PATH}/binsrch.elf > ${EXECUTABLE_OUTPUT_PATH}/binsrch.S
    COMMAND echo dissassemble done
    BYPRODUCTS ${EXECUTABLE_OUTPUT_PATH}/binsrch.S
    VERBATIM
)

# add_custom_command(
#     TARGET ${PROJECT_NAME}.elf
#     POST_BUILD
#     COMMAND avr-nm -S -l ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.elf > ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.nm
#     COMMAND echo nmap done
#     BYPRODUCTS ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.nm
#     VERBATIM
# )
