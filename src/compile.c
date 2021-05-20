#include <stdlib.h>
#include "compile.h"
#include "types.h"
#include "instructions.h"
#include "rtc_emit.h"
#include "asm.h"
#include "debug.h"
#include "utils.h"
#include "wkreprog.h"
#include <avr/pgmspace.h>
bool is_imported(wasm_function_ptr func)
{
    return  !(func->import.moduleUtf8 == NULL && func->import.fieldUtf8 == NULL);
}
bool is_entry_func(wasm_module_ptr module, wasm_function_ptr func){
    return func==module->function_list[module->function_num-1];
}
void hello(u32 res)
{
    printf("hello, world!\r\n");
    printf("result: %d\r\n",res);
}
extern uint_farptr_t avr_flash_pageaddress;
u16 *codebuffer;
void compile_init()
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    codebuffer = malloc(RTC_CODEBUFFER_SIZE*2);
    emit_init(codebuffer);
    // hexdump_pgm((bytes)(((uint16_t)rtc_start_of_next_method)*2), 10);
}
void compile_deinit()
{
    free(codebuffer);
}
//为了调试，这里每次都烧写，在全部功能调试完毕后可以改为一次性烧写，节约部分时间
void compile_open()
{
    wkreprog_open_raw(((uint32_t)rtc_start_of_next_method) * 2, RTC_END_OF_COMPILED_CODE_SPACE);
}
void compile_close()
{
    emit_flush_to_flash();
    RTC_SET_START_OF_NEXT_METHOD(wkreprog_get_raw_position());
    wkreprog_close();
}

void wasm_compile_function(wasm_module_ptr module, wasm_function_ptr func)
{
    compile_open();
    bytes start = func->wasm;
    bytes end = func->wasmEnd;

    log(compile,"code contained: ");
    hexdump(start,end-start);

    if(is_entry_func(module,func)){//TODO 在入口函数前保存状态
        emit_x_push_all();
    }

    while (start<end)
    {
        emit_single_instruction(module,func,&start,end);
    }

    func->compiled = rtc_start_of_next_method;
    
    compile_close();
}
void wasm_compile_module(wasm_module_ptr module)
{
    compile_init();

    wasm_function_ptr func;
    for (int i = 0; i < module->function_num; i++)
    {
        func = module->function_list[i];
        log(compile, "compiling function %s", func->name);
        if (is_imported(func))
        {
            log(compile, "add native function %s", func->name);
            func->native = hello;
            continue; //TODO 链接外部函数
        }
        else
        {
            wasm_compile_function(module, func);
            log(compile, "add compiled function %s", func->name);
            if(i==module->function_num-1){
                //TODO 暂时以最后一个函数为入口函数
                module->entry_method = func->compiled;
                log(compile,"entry function: %s",func->name);
            }
        }
    }

    compile_deinit();
}
