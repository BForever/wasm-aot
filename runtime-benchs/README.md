# 运行时测试集
本目录用于测试MicroPython,javascript等运行时的效率，用于与WAIT的运行效率对比
## esp32-micropython
在esp32开发板上烧录MicroPython固件后逐个上传代码文件即可测试

## esp32-native
内含多个Esp-idf工程，下载[esp-idf](https://github.com/espressif/esp-idf)后按照教程即可编译烧写并进行测试

## JavaScript
内含相同测试代码的JavaScript版本，选择你想对比的JavaScript运行时执行该代码即可

## x86-native-wasm
内含相同测试代码的C版本，内含的CMakeLists.txt文件可以通过以下命令进行编译，使其生成WASM文件用于各类wasm运行时的测试：
```
mkdir build&&cd build
cmake .. -DWASM=TRUE
make
```
以上命令运行前需先下载[WASI-SDK](https://github.com/WebAssembly/wasi-sdk)

同时，若不指定`-DWASM=TRUE`，则可生成native的可执行文件作为基准。