../libs/wasi-sdk-12.0/bin/clang client.c -o client.wasm -O2 -DNDEBUG -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,-s -Wl,--allow-undefined-file=riotstubs.txt -Wl,-z,stack-size=4096
../libs/wasi-sdk-12.0/bin/clang server.c -o server.wasm -O2 -DNDEBUG -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,-s -Wl,--allow-undefined-file=riotstubs.txt -Wl,-z,stack-size=4096

xxd -i client.wasm > ../src/client.wasm.h
xxd -i server.wasm > ../src/server.wasm.h

../libs/wabt-1.0.21/bin/wasm2wat client.wasm -o client.wat
../libs/wabt-1.0.21/bin/wasm2wat server.wasm -o server.wat

cd ../src
# native test
make
# ./bin/native/wasm3.elf

# flash to esp32
# sudo make BUILD_IN_DOCKER=1 BOARD=esp32-wroom-32
# sudo make flash term BUILD_IN_DOCKER=1 BOARD=esp32-wroom-32