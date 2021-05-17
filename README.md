# WASM-AoT

## 介绍
一个WASM AOT运行时

## 软件架构
### libs
第三方库
包括AVRORA模拟器
### include
头文件
### src
基于WASM3的运行时代码
### app
WASM示例应用代码


## 安装教程

0.  可能需要的依赖(Ubuntu系统)
```
apt install git build-essential wget curl unzip python3 gcc-multilib xxd cmake
apt install gcc-avr avr-libc avrdude gdb-avr openjdk-11-jdk
```

## 使用说明

1.  编译代码

在根目录执行以下shell命令：
```
mkdir build&&cd build
cmake ..
make
```
2. 在模拟器中运行

在根目录执行以下shell命令：
```
cd libs
sh avrora.sh
```

## 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request