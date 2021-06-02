#include "app.wasm.h"
// #include "hello.wasm.h"
// #include "client.wasm.h"
#include "test.wasm.h"
#include "debug.h"
#include "types.h"
#include "parse.h"
#include "compile.h"
#include "utils.h"
void wasm_call_method(normal_function method) {
	log(temp,"start exec");
	method();
}

// extern char* __data_start;
// extern void* __malloc_heap_start;
extern char* __brkval;

int main()
{
	// WASM 代码数组
	wasm_code_ptr code = sys_malloc(sizeof(wasm_code));
	// code->ptr = app_wasm;
	// code->length = app_wasm_len;
	// code->ptr = hello_wasm;
	// code->length = hello_wasm_len;
	// code->ptr = client_wasm;
	// code->length = client_wasm_len;
	code->ptr = test_wasm;
	code->length  = test_wasm_len;

	// 读取WASM字节码
	wasm_module_ptr module = wasm_load_module(code);
	// 编译烧写
	wasm_compile_module(module);

	// 开始执行
	log(temp,"SP:%p",STACK_POINTER());
	wasm_call_method(module->entry_method);

	log(temp,"wasm func returned.");
}
