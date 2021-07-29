cmake_minimum_required(VERSION 3.16)

PROJECT(benchmark)

INCLUDE_DIRECTORIES(.)
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR})
########################### AVRORA NATIVE编译 ##########################
if(AVRORA)
add_definitions(-DAVRORA)

set (CMAKE_C_COMPILER "avr-gcc")
set (CMAKE_CXX_COMPILER "avr-g++")
#-Werror
add_compile_options(-mmcu=atmega128 -Os -finline-limit-0 -ggdb -Wall  -std=gnu99 -fdata-sections -ffunction-sections)
set (CMAKE_EXE_LINKER_FLAGS "-mmcu=atmega128 -Wl,--gc-sections ")
# -Wl,--defsym=__heap_start=0x802000,--defsym=__heap_end=0x803fff")

SET(binsrch benchmark.c binsrch.c )
SET(bsort benchmark.c bsort.c )
SET(fillarray benchmark.c fillarray.c )
SET(funcall benchmark.c funcall.c )
SET(hsort benchmark.c hsort.c )
SET(fft benchmark.c bm-fft/fft.c bm-fft/javax_rtcbench_RTCBenchmark.c)
SET(lec benchmark.c bm-lec/lec.c bm-lec/javax_rtcbench_RTCBenchmark.c)
SET(outlier benchmark.c bm-outlier/outlier32u.c bm-outlier/javax_rtcbench_RTCBenchmark.c)
SET(heatcalib benchmark.c bm-heat_calib/heat_calib.c bm-heat_calib/heat_sensor_data.c bm-heat_calib/javax_rtcbench_RTCBenchmark.c)
SET(motetrack benchmark.c bm-motetrack/MobileMoteM.c bm-motetrack/motetrack.c  bm-motetrack/RefSignatureDB.c bm-motetrack/SignatureDB.c)

SET(heatdetect benchmark.c bm-heat_detect/heat_detect.c bm-heat_detect/heat_calib.c bm-heat_detect/heat_sensor_data.c bm-heat_detect/javax_rtcbench_RTCBenchmark.c)

ADD_EXECUTABLE(binsrch.elf ${binsrch})
ADD_EXECUTABLE(bsort.elf ${bsort})
ADD_EXECUTABLE(fillarray.elf ${fillarray})
ADD_EXECUTABLE(funcall.elf ${funcall})
ADD_EXECUTABLE(hsort.elf ${hsort})
ADD_EXECUTABLE(fft.elf ${fft})
ADD_EXECUTABLE(lec.elf ${lec})
ADD_EXECUTABLE(outlier.elf ${outlier})
ADD_EXECUTABLE(heatcalib.elf ${heatcalib})
ADD_EXECUTABLE(motetrack.elf ${motetrack})


ADD_EXECUTABLE(heatdetect.elf ${heatdetect})
########################### WASM编译 ##########################
else()


set (CMAKE_C_COMPILER "${PROJECT_SOURCE_DIR}/../../libs/wasi-sdk-12.0/bin/clang")
set (z_stack_size 16)
add_compile_options(-Os -DNDEBUG)
set (CMAKE_EXE_LINKER_FLAGS "-nostdlib -Wl,--no-entry -Wl,--export-all -Wl,-s -Wl,--allow-undefined-file=${PROJECT_SOURCE_DIR}/stubs.txt -Wl,-z,stack-size=${z_stack_size}")

SET(binsrch binsrch.c )
SET(bsort bsort.c )
SET(fillarray  fillarray.c )
SET(funcall funcall.c )
SET(hsort hsort.c )
SET(fft bm-fft/fft.c bm-fft/javax_rtcbench_RTCBenchmark.c)
SET(lec bm-lec/lec.c bm-lec/javax_rtcbench_RTCBenchmark.c)
SET(outlier bm-outlier/outlier32u.c bm-outlier/javax_rtcbench_RTCBenchmark.c)
SET(heatcalib bm-heat_calib/heat_calib.c bm-heat_calib/heat_sensor_data.c bm-heat_calib/javax_rtcbench_RTCBenchmark.c)
SET(motetrack bm-motetrack/MobileMoteM.c bm-motetrack/motetrack.c  bm-motetrack/RefSignatureDB.c bm-motetrack/SignatureDB.c)

SET(heatdetect bm-heat_detect/heat_detect.c bm-heat_detect/heat_calib.c bm-heat_detect/heat_sensor_data.c bm-heat_detect/javax_rtcbench_RTCBenchmark.c)

ADD_EXECUTABLE(binsrch.wasm ${binsrch})
ADD_EXECUTABLE(bsort.wasm ${bsort})
ADD_EXECUTABLE(fillarray.wasm ${fillarray})
ADD_EXECUTABLE(funcall.wasm ${funcall})
ADD_EXECUTABLE(hsort.wasm ${hsort})
ADD_EXECUTABLE(fft.wasm ${fft})
ADD_EXECUTABLE(lec.wasm ${lec})
ADD_EXECUTABLE(outlier.wasm ${outlier})
ADD_EXECUTABLE(heatcalib.wasm ${heatcalib})
ADD_EXECUTABLE(motetrack.wasm ${motetrack})

ADD_EXECUTABLE(heatdetect.wasm ${heatdetect})
endif(AVRORA)


execute_process(COMMAND bash towat.sh WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})

# add_custom_command(
#     TARGET binsrch.elf
#     POST_BUILD
#     COMMAND avr-objdump -D ${EXECUTABLE_OUTPUT_PATH}/binsrch.elf > ${EXECUTABLE_OUTPUT_PATH}/binsrch.S
#     COMMAND echo dissassemble done
#     BYPRODUCTS ${EXECUTABLE_OUTPUT_PATH}/binsrch.S
#     VERBATIM
# )


# add_custom_command(
#     TARGET ${PROJECT_NAME}.elf
#     POST_BUILD
#     COMMAND avr-nm -S -l ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.elf > ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.nm
#     COMMAND echo nmap done
#     BYPRODUCTS ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.nm
#     VERBATIM
# )
