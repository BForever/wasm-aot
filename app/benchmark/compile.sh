#!/bin/bash
# --sysroot=../../libs/wasi-sdk-12.0/share/wasi-sysroot
# cc="../../libs/wasi-sdk-12.0/bin/clang"
# z_stack_size=16
# index=0
# for filename in `find . -name "*.c"`
# do
#     filelist[$index]=$filename
#     index=`expr $index + 1`
#     echo "found c file $filename"
# done

# for filename in ${filelist[*]}
# do 
#     echo "in $filename"
#     if test $filename = "./benchmark.c"
#     then 
#         echo "continue"
#         continue
#     fi
#     $cc $filename -o "$filename".wasm -O3 -DNDEBUG -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,-s -Wl,--allow-undefined-file=stubs.txt -Wl,-z,stack-size=$z_stack_size
#     wasm2wat "$filename".wasm -o "$filename".wat
# done
#-nostdlib

rm *.elf
rm *.wasm.wat
rm *.wasm.h
rm *.wasm

rm -r build
mkdir build
cd build
cmake .. -DAVRORA=TRUE
make

cd ..
rm -r build
mkdir build
cd build
cmake ..
make
cmake ..
