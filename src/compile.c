#include <stdlib.h>
#include "compile.h"
#include "types.h"
#include "instructions.h"
#include "rtc_emit.h"
#include "asm.h"
#include "debug.h"
#include "utils.h"
#include "wkreprog.h"
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
void wasm_compile_function(wasm_module_ptr module, wasm_function_ptr func)
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    bytes start = func->wasm;
    bytes end = func->wasmEnd;

    u16 *codebuffer = malloc(RTC_CODEBUFFER_SIZE);

    wkreprog_open_raw(((uint32_t)rtc_start_of_next_method)*2,RTC_END_OF_COMPILED_CODE_SPACE);

    log(compile,"rtc_start_of_next_method:%p",((uint32_t)rtc_start_of_next_method)*2);

    log(compile, "before flush:");
    hexdump((bytes)(((uint32_t)rtc_start_of_next_method)*2), 10);

    emit_init(codebuffer);

    emit_2_CALL(p);

    emit_flush_to_flash();
    log(compile, "after flush:");
    hexdump((bytes)(((uint32_t)rtc_start_of_next_method)*2), 10);

    compiled_method method = (((uint32_t)rtc_start_of_next_method)*2);

    method();
}
void wasm_compile_module(wasm_module_ptr module)
{
    wasm_function_ptr func;
    for (int i = 0; i < module->function_num; i++)
    {
        log(compile, "compiling function %s", func->name);
        func = module->function_list[0];
        if (is_imported(func))
        {
            log(compile, "add native function %s", func->name);
            continue; //TODO 链接外部函数
        }
        else
        {
            log(compile, "add compiled function %s", func->name);
            wasm_compile_function(module, func);
        }
    }
}
