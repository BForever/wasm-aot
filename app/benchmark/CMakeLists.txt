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

ADD_EXECUTABLE(binsrch.elf benchmark.c binsrch.c )
ADD_EXECUTABLE(bsort.elf benchmark.c bsort.c )
ADD_EXECUTABLE(fillarray.elf benchmark.c fillarray.c )
ADD_EXECUTABLE(funcall.elf benchmark.c funcall.c )
ADD_EXECUTABLE(hsort.elf benchmark.c hsort.c )
ADD_EXECUTABLE(fft.elf benchmark.c bm-fft/fft.c bm-fft/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(lec.elf benchmark.c bm-lec/lec.c bm-lec/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(outlier.elf benchmark.c bm-outlier/outlier32u.c bm-outlier/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(heatcalib.elf benchmark.c bm-heat_calib/heat_calib.c bm-heat_calib/heat_sensor_data.c bm-heat_calib/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(heatdetect.elf benchmark.c bm-heat_detect/heat_detect.c bm-heat_detect/heat_calib.c bm-heat_detect/heat_sensor_data.c bm-heat_detect/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(motetrack.elf benchmark.c bm-motetrack/MobileMoteM.c bm-motetrack/motetrack.c  bm-motetrack/RefSignatureDB.c bm-motetrack/SignatureDB.c)
ADD_EXECUTABLE(image.elf benchmark.c bm-image/main.c)
ADD_EXECUTABLE(wavelet.elf benchmark.c bm-wavelet/main.c bm-wavelet/wavelet.c)
ADD_EXECUTABLE(pi.elf benchmark.c bm-pi/pi.c)

# add_custom_command(
#     TARGET wavelet.elf
#     POST_BUILD
#     COMMAND avr-objdump -D ${EXECUTABLE_OUTPUT_PATH}/wavelet.elf > ${EXECUTABLE_OUTPUT_PATH}/wavelet.S
#     COMMAND echo dissassemble done
#     # BYPRODUCTS ${EXECUTABLE_OUTPUT_PATH}/wavelet.S
#     VERBATIM
# )
else()

########################### WASM编译 ##########################
set (CMAKE_C_COMPILER "${PROJECT_SOURCE_DIR}/../../libs/wasi-sdk-12.0/bin/clang")
set (z_stack_size 16)
add_compile_options(-Os -DNDEBUG)
set (CMAKE_EXE_LINKER_FLAGS "-nostdlib -Wl,--no-entry -Wl,--export-all -Wl,-s -Wl,--allow-undefined-file=${PROJECT_SOURCE_DIR}/stubs.txt -Wl,-z,stack-size=${z_stack_size}")

ADD_EXECUTABLE(binsrch.wasm binsrch.c )
ADD_EXECUTABLE(bsort.wasm bsort.c )
ADD_EXECUTABLE(fillarray.wasm fillarray.c )
ADD_EXECUTABLE(funcall.wasm funcall.c )
ADD_EXECUTABLE(hsort.wasm hsort.c )
ADD_EXECUTABLE(fft.wasm bm-fft/fft.c bm-fft/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(lec.wasm bm-lec/lec.c bm-lec/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(outlier.wasm bm-outlier/outlier32u.c bm-outlier/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(heatcalib.wasm bm-heat_calib/heat_calib.c bm-heat_calib/heat_sensor_data.c bm-heat_calib/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(heatdetect.wasm bm-heat_detect/heat_detect.c bm-heat_detect/heat_calib.c bm-heat_detect/heat_sensor_data.c bm-heat_detect/javax_rtcbench_RTCBenchmark.c)
ADD_EXECUTABLE(motetrack.wasm bm-motetrack/MobileMoteM.c bm-motetrack/motetrack.c  bm-motetrack/RefSignatureDB.c bm-motetrack/SignatureDB.c)
ADD_EXECUTABLE(image.wasm bm-image/main.c)
# ADD_EXECUTABLE(wavelet.wasm bm-wavelet/main.c bm-wavelet/wavelet.c)
ADD_EXECUTABLE(pi.wasm bm-pi/pi.c)

execute_process(COMMAND bash towat.sh WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})

endif(AVRORA)





# add_custom_command(
#     TARGET ${PROJECT_NAME}.elf
#     POST_BUILD
#     COMMAND avr-nm -S -l ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.elf > ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.nm
#     COMMAND echo nmap done
#     BYPRODUCTS ${EXECUTABLE_OUTPUT_PATH}/${PROJECT_NAME}.nm
#     VERBATIM
# )
