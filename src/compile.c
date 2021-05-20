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
    if (func->import.moduleUtf8 == NULL && func->import.fieldUtf8 == NULL)
    {
        return false;
    }
    return true;
}
void p()
{
    printf("test call\r\n");
}

typedef void (*compiled_method)();
extern uint_farptr_t avr_flash_pageaddress;

void reprog_init()
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    u16 *codebuffer = malloc(RTC_CODEBUFFER_SIZE);

    wkreprog_open_raw(((uint32_t)rtc_start_of_next_method) * 2, RTC_END_OF_COMPILED_CODE_SPACE);
    emit_init(codebuffer);
    // hexdump_pgm((bytes)(((uint16_t)rtc_start_of_next_method)*2), 10);
    // compiled_method method = (((uint16_t)rtc_start_of_next_method));
    // method();
}

void reprog_close()
{
    emit_flush_to_flash();
    wkreprog_close();
}
void wasm_compile_function(wasm_module_ptr module, wasm_function_ptr func)
{
    bytes start = func->wasm;
    bytes end = func->wasmEnd;

    log(compile,"code contained: ");
    hexdump(start,end-start);

    while (start<=end)
    {
        u8 op = *(start++);
        if(op==Call){
            log(compile,"compiling CALL instruction...");
            u32 index;
            ReadLEB_u32(&index,&start,end);
            log(compile,"called function index :%d",index);
            if(index>=module->function_num){
                panicf("called index out of scope");
            }
            wasm_function_ptr called_func = module->function_list[index];
            if(is_imported(called_func)){
                emit_2_CALL(called_func->native);//TODO 不同签名类型的函数应当有不同的局部变量预处理
            }else{
                emit_2_CALL(called_func->compiled);
            }
            emit_RET();
        }
    }
    func->compiled = (((uint16_t)rtc_start_of_next_method));
    
}
void wasm_compile_module(wasm_module_ptr module)
{
    reprog_init();

    wasm_function_ptr func;
    for (int i = 0; i < module->function_num; i++)
    {
        func = module->function_list[i];
        log(compile, "compiling function %s", func->name);
        if (is_imported(func))
        {
            log(compile, "add native function %s", func->name);
            func->native = p;
            continue; //TODO 链接外部函数
        }
        else
        {
            wasm_compile_function(module, func);
            log(compile, "add compiled function %s", func->name);
            if(i==module->import_num){
                //TODO 暂时以第一个函数为入口函数
                module->entry_method = func->compiled;
                log(compile,"entry function: %s",func->name);
            }
        }
    }

    reprog_close();
}
