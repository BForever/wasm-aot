#ifndef COMPILE_H
#define COMPILE_H
#include"types.h"

void wasm_compile_module(wasm_module_ptr module);

extern u16 jump_vector_start_addr;

#endif