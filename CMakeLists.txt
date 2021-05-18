cmake_minimum_required(VERSION 3.16)

PROJECT(aot)

if(DEFINED NATIVE)
else()
add_definitions(-DAVRORA)
set (CMAKE_C_COMPILER "avr-gcc")
set (CMAKE_CXX_COMPILER "avr-g++")
#-Werror
add_compile_options(-mmcu=atmega128 -Os -finline-limit-0 -ggdb -Wall  -std=gnu99 -fdata-sections -ffunction-sections)
set (CMAKE_EXE_LINKER_FLAGS "-mmcu=atmega128 -Wl,--section-start=.reprogram_flash_page=0x1F800 -Wl,-T${PROJECT_SOURCE_DIR}/libs/ld.lnk -Wl,--gc-sections")
endif()

#head file path
INCLUDE_DIRECTORIES(
include
app
)
#source directory
AUX_SOURCE_DIRECTORY(src DIR_SRCS)

SET(test
${DIR_SRCS}
)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
if(DEFINED NATIVE)
ADD_EXECUTABLE(test ${test})
else()
ADD_EXECUTABLE(test.elf ${test})
endif()