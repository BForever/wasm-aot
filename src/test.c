// #include "heap.h"
#include <stdlib.h>
#include "app.wasm.h"
#include "hello.wasm.h"
#include "client.wasm.h"
#include "debug.h"
#include "types.h"
#include"parse.h"
// unsigned char mem[HEAPSIZE];
void wasm_compile_module(wasm_module_ptr module){}
void wasm_call_method(bytes method){}

int main()
{
	// WASM 代码数组
	wasm_code_ptr code = malloc(sizeof(wasm_code));
	// code->ptr = app_wasm;
	// code->length = app_wasm_len;
	code->ptr = hello_wasm;
	code->length = hello_wasm_len;
	code->ptr = client_wasm;
	code->length = client_wasm_len;

	// 读取WASM字节码
	wasm_module_ptr module = wasm_load_module(code);
	// 编译烧写
	wasm_compile_module(module);

	wasm_call_method(module->entry_method);

	// dj_mem_init(mem, memsize);
}
