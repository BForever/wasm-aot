#include <stdlib.h>
#include "compile.h"
#include "types.h"
#include "instructions.h"
#include "rtc_emit.h"
#include "asm.h"
#include "debug.h"
#include "utils.h"
#include "wkreprog.h"
#include "user_import.h"
#include <avr/pgmspace.h>
#include<string.h>
bool is_imported(wasm_function_ptr func)
{
    return  !(func->import.moduleUtf8 == NULL && func->import.fieldUtf8 == NULL);
}

u16 jump_vector_start_addr;

extern uint_farptr_t avr_flash_pageaddress;
u16 *codebuffer;
void compile_init(wasm_module_ptr module)
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    codebuffer = malloc(RTC_CODEBUFFER_SIZE*2);
    emit_init(codebuffer);

    jump_vector_start_addr = rtc_start_of_next_method;

    // 留出跳转向量表的空间
    compile_open();
    wkreprog_skip(4*(module->function_num-module->import_num));
    compile_close();

    // call_target_list = calloc(module->function_num-module->import_num,sizeof(u16));
    // hexdump_pgm((bytes)(((uint16_t)rtc_start_of_next_method)*2), 10);
}
void compile_deinit(wasm_module_ptr module)
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    compile_open();
    for(int i=0;i<module->function_num-module->import_num;i++){
        emit_2_JMP(module->function_list[module->import_num+i]->compiled*2);
    }
    compile_close();


    // 烧写跳转向量表
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

    if(end<start){
        panicf("code section range error");
    }

    log(compile,"code contained:");
    logif(compile,printf("\r\n");hexdump(start,end-start););

    if(is_entry_func(module,func)){//TODO 在入口函数的前部保存状态
        log(emit,"push for call save");
        emit_x_call_save();
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
    compile_init(module);

    wasm_function_ptr func;
    for (int i = 0; i < module->function_num; i++)
    {
        func = module->function_list[i];
        log(compile, "compiling function %s", func->name);
        if (is_imported(func))
        {
            log(compile, "add native function %s", func->name);
            bool found=false;

            for(int j=0;j<imports_num;j++){
                if(0==mystrcmp(func->name,imports_name[j])){
                    func->native = imports[j];
                    found = true;
                    log(compile,"found function \"%s\"",imports_name[j]);
                }
            }
            if(!found){
                panicf("import function not found!");
            }
            continue; //TODO 链接外部函数
        }
        else
        {
            wasm_compile_function(module, func);
            log(compile, "add compiled function %s", func->name);
            if(is_entry_func(module,func)){
                //TODO 暂时以第一个函数为入口函数
                module->entry_method = func->compiled;
                log(compile,"entry function: %s",func->name);
            }
        }
    }

    compile_deinit(module);
}
