# Prepare
#rustup target add wasm32-unknown-unknown

# Compile
# LIBRARY_PATH=/usr/lib32:$LIBRARY_PATH 
# export LIBRARY_PATH
../libs/wasi-sdk-12.0/bin/clang hello.c -o app.wasm -O2 -DNDEBUG -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,-s -Wl,--allow-undefined-file=riotstubs.txt
# Optimize (optional)
# 其他可选项 -Wl,--export-dynamic
# wasm-opt -O3 app.wasm -o app.wasm
#wasm-strip app.wasm

# Convert to WAT
../libs/wabt-1.0.21/bin/wasm2wat app.wasm -o app.wat

# Convert to C header
xxd -i app.wasm > ../src/app.wasm.h
# scp app.wasm.h fanhc@10.214.149.2:~/code/RIOT/tests/wasm3/app.wasm.h
# cp app.wasm ../data/app.wasm

# ../libs/wasi-sdk-12.0/bin/clang helloworld.c -o hello-wasi.wasm -O2 -DNDEBUG --target=wasm32-wasi --sysroot=../libs/wasi-sdk-12.0/share/wasi-sysroot