#!/bin/bash

cd ../app
wat2wasm test.wat -o test.wasm --enable-annotations -v
wasm2wat test.wasm -o testi.wat
xxd -i test.wasm > test.wasm.h
sed -i "s#char#char\ __attribute__\ ((section\ (\".rtc_code_marker\")))"# test.wasm.h
cd ../libs

cd ../src
sed -i "s#\#include\ \"[a-zA-Z]*.wasm.h\"#\#include\ \"test.wasm.h\""# main.c
cd ../libs

cd ../build
make
cd ../libs

java -jar avrora.jar -single -monitors=trace,c-print -trace-only-when-enabled=true -colors=false -mcu=atmega128 ../bin/aot.elf | tee test.wasmoutput.txt 

