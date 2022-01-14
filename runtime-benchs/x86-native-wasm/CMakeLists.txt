cmake_minimum_required(VERSION 3.16)

project("native")

include_directories(${PROJECT_SOURCE_DIR})

if(WASM)
    set(CMAKE_C_LINK_FLAGS "")
    set (CMAKE_C_COMPILER "/opt/wasi-sdk/bin/clang")
    # add_compile_options(-Os -DNDEBUG)
    ADD_EXECUTABLE(main.wasm main.c measure.c binsrch.c bsort.c fillarray.c 
    hsort.c pi.c fft.c outlier.c heatcalib.c heatdetect.c wavelet.c image.c )

    target_link_libraries(main.wasm -lm)

else()
    add_executable(main main.c measure.c binsrch.c bsort.c fillarray.c 
        hsort.c pi.c fft.c outlier.c heatcalib.c heatdetect.c wavelet.c image.c)

    target_link_libraries(main -lm)

endif(WASM)