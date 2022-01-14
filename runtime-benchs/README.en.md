# Runtime test sets
This directory is used to test the efficiency of MicroPython, JavaScript and other runtimes, and to compare the efficiency with that of WAIT
## esp32-micropython
After burning the MicroPython firmware on the esp32 development board, upload the code files one by one to test
## esp32-native
Contains multiple ESP-IDF projects. Download [ESP-IDF](https://github.com/espressif/esp-idf). After that, you can compile, burn and test according to the ESP-IDF tutorials.
## JavaScript
The same test code of JavaScript version, can be executed by any JavaScript runtime you want.
## x86-native-wasm
C version, the including `CMakeLists.txt` file can generate wasm files for various wasm runtimes to test with the following commands:
```
mkdir build&&cd build
cmake .. -DWASM=TRUE
make
```
Download [wasi-sdk](https://github.com/WebAssembly/wasi-sdk) before running the above command.
Meanwhile, if `-DWASM=TRUE` is not specified, a native executable file can be generated to be used as the benchmark.