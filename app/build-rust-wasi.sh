# Prepare
#rustup target add wasm32-unknown-unknown

# Compile
rustc -O --crate-type=cdylib              \
      --target=wasm32-wasi     \
      -C link-arg=-zstack-size=512       \
      -C link-arg=-s                      \
      -o app.wasm wasi.rs

# Optimize (optional)
#wasm-opt -O3 app.wasm -o app.wasm
#wasm-strip app.wasm

# Convert to WAT
wasm2wat app.wasm -o app.wat

# Convert to C header
xxd -i app.wasm > app.wasm.h
scp app.wasm.h fanhc@10.214.149.2:~/code/RIOT/tests/wasm3/app.wasm.h
# cp app.wasm ../data/app.wasm