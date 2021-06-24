#include "lec.wasm.h"
#include "debug.h"
#include "types.h"
#include "parse.h"
#include "compile.h"
#include "utils.h"
#include "asm.h"

void wasm_call_method(u16 method) {
	log(temp,"start exec");
	((normal_function)method)();
}

// extern char* __data_start;
// extern void* __malloc_heap_start;
extern char* __brkval;
extern char* __rodata_end;

wasm_module g_module={.name="unamed"};

int main()
{
	// WASM 代码数组
	wasm_code_ptr code = sys_malloc(sizeof(wasm_code));
	code->ptr = test_wasm;
	code->length  = test_wasm_len;

	// 读取WASM字节码
	wasm_module_ptr module = wasm_load_module(code);
	// 编译烧写
	wasm_compile_module(module);

	// 开始执行
	log(temp,"SP:%p",STACK_POINTER());
	wasm_memory_init(module);
	wasm_call_method(module->entry_method);

	log(temp,"wasm func returned.");

	asm volatile ("break");
	return 0;
}
