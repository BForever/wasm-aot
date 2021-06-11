#include "app.wasm.h"
// #include "hello.wasm.h"
// #include "client.wasm.h"
#include "test.wasm.h"
#include "test-cal.wasm.h"
#include "binsrch.wasm.h"
#include "bsort.wasm.h"
#include "funcall.wasm.h"
#include "fillarray.wasm.h"
#include "hsort.wasm.h"
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
	// code->ptr = app_wasm;
	// code->length = app_wasm_len;
	// code->ptr = hello_wasm;
	// code->length = hello_wasm_len;
	// code->ptr = client_wasm;
	// code->length = client_wasm_len;
	code->ptr = test_wasm;
	code->length  = test_wasm_len;
    // code->ptr = test_cal_wasm;
	// code->length  = test_cal_wasm_len;
	// code->ptr = binsrch_wasm;
	// code->length  = binsrch_wasm_len;
	// code->ptr = funcall_wasm;
	// code->length  = funcall_wasm_len;
	// code->ptr = fillarray_wasm;
	// code->length  = fillarray_wasm_len;
	// code->ptr = hsort_wasm;
	// code->length  = hsort_wasm_len;
	// code->ptr = bsort_wasm;
	// code->length  = bsort_wasm_len;
	

	// 读取WASM字节码
	wasm_module_ptr module = wasm_load_module(code);
	// 编译烧写
	wasm_compile_module(module);

	// 开始执行
	log(temp,"SP:%p",STACK_POINTER());
	wasm_memory_init(module);
	wasm_call_method(module->entry_method);

	log(temp,"wasm func returned.");
}
