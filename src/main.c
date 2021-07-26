#include "funcall.wasm.h"
#include "debug.h"
#include "types.h"
#include "parse.h"
#include "compile.h"
#include "utils.h"
#include "asm.h"
// #include "AvroraTrace.h"
// extern char* __data_start;
// extern void* __malloc_heap_start;
extern char* __brkval;
extern char* __rodata_end;
extern char __wait_end;
extern u16  entry_method;


extern void icall(u32 index);
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
	
	
	// log(temp,"test icall");
	// avroraTraceEnable();
	// icall(0);
	// avroraTraceDisable();
	

	// 开始执行
	log(temp,"SP:%p",STACK_POINTER());
	log(temp,"start exec");
	wasm_call_entry_method(module);
	log(temp,"wasm func returned.");



	asm volatile ("break");
	return 0;
}
