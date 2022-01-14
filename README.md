# WASM-AoT

## 介绍
一个可以在AVR架构运行WASM的AOT运行时

## 软件架构
### app
WASM示例应用代码
包括benchmark
### bin
生成的可执行文件
### include
头文件
### libs
第三方库
包括AVRORA模拟器
### runtime-benchs
其他运行时测试集
### src
运行时核心代码
### utils
数据统计工具



## 安装教程

1.  可能需要的依赖(Ubuntu系统)
```
apt install git build-essential wget curl unzip python3 gcc-multilib xxd cmake wabt
apt install gcc-avr avr-libc avrdude gdb-avr openjdk-11-jdk
```

## 使用说明

1. 编译wasm代码[可选]

首先编写`test.wat`文件（暂时使用文本格式直接编写wasm代码，方便调试）

然后使用以下指令将其转化为`.h`格式
```
wat2wasm test.wat -o test.wasm --enable-annotations -v
wasm2wat test.wasm -o testi.wat  
xxd -i test.wasm > test.wasm.h
```
第一个命令中附加的参数可以方便查看wasm二进制格式的具体情况

第二个命令反向从二进制格式转化为文本格式，可以用于对比验证手动编写代码的正确性

如需测试wat是否正确，可以在`app/wasmer-test`下运行`python3 instance.py`
(依赖: `pip install wasmer wasmer_compiler_cranelift`)
即可直接查看结果。
如果在wat中有import的函数，请在`instance.py`中同样添加。

2.  编译代码

在根目录执行以下shell命令：
```
rm -rf build
mkdir build&&cd build
cmake ..
make
```
3. 在模拟器中运行

在根目录执行以下shell命令：
```
cd libs
sh test.sh
```

## 运行Benchmark
1. 编译benchmark
在app/benchmark文件夹运行
```
bash compile.sh
```
脚本将自动完成benchmark的编译（从C代码到native的elf以及wasm文件）

2. 运行benchmark
在libs目录运行
```
bash wasmbench.sh
```
可以自动运行所有上一步编译产生的wasm文件，并将结果输出到目录中的\[benchname\].wasmoutput.txt文件

3. native 运行 benchmark
在libs目录运行
```
bash nativebench.sh
```
可以自动运行所有第一步编译生成的elf文件，并将结果输出到目录中的\[benchname\].nativeoutput.txt文件，用于比较runtime的运行效率

## 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request