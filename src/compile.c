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
#include <string.h>
bool is_imported(wasm_function_ptr func)
{
    return !(func->import.moduleUtf8 == NULL && func->import.fieldUtf8 == NULL);
}

u16 jump_vector_start_addr;
u16 wasm_globals_size;
bytes wasm_global_temp_space;
bytes wasm_mem_space;
u16 *codebuffer;
void compile_init(wasm_module_ptr module)
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    codebuffer = sys_malloc(RTC_CODEBUFFER_SIZE * 2);
    emit_init(codebuffer);

    // 留空跳转向量表
    compile_open();
    jump_vector_start_addr = rtc_start_of_next_method;
    wkreprog_skip((module->function_num - module->import_num) * 4);
    compile_close();

    // call_target_list = sys_calloc(module->function_num-module->import_num,sizeof(u16));
    // hexdump_pgm((bytes)(((uint16_t)rtc_start_of_next_method)*2), 10);
}
void compile_deinit(wasm_module_ptr module)
{
    // 烧写跳转向量表
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    compile_open();
    for (int i = 0; i < module->function_num - module->import_num; i++)
    {
        emit_2_JMP(module->function_list[module->import_num + i]->compiled * 2);
    }
    compile_close();

    //释放空间
    sys_free(module->global_list);//全局变量列表
    sys_free(module->data_segment_list);//数据段
    for(int i=0;i<module->function_num;i++){
        sys_free(module->function_list[i]);//函数列表
    }
    sys_free(module->function_list);//函数列表指针
    sys_free(codebuffer);//指令生成缓存
    //加载全局变量初始值
    memcpy(wasm_mem_space,wasm_global_temp_space,wasm_globals_size);
}
//为了调试，这里每次都烧写，在全部功能调试完毕后可以改为一次性烧写，节约部分时间
void compile_open()
{
    // log(compile,"flash at: %p",rtc_start_of_next_method);
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

    if (end < start)
    {
        panicf("code section range error");
    }

    log(compile, "code contained:");
    logif(compile, printf("\r\n"); hexdump_pgm(start, end - start););

    if (is_entry_func(module, func))
    { //TODO 在入口函数的前部保存状态
        // log(emit, "push for call save");
        // emit_x_call_save();

        // 加载全局变量区首地址
        log(emit, "global space:%p", wasm_mem_space);
        // logif(emit,printf("set Z:Z+1 to %02X",(u8)wasm_globals_start);printf(":%02X",(u8)(((u16)wasm_globals_start)>>8)););

        emit_LDI(R30, (u8)wasm_mem_space);
        emit_LDI(R31, ((u8)((u16)wasm_mem_space >> 8)));
    }

    if (func->numLocals)
    {
        // emit_save_Y();
        // emit_init_Y();
        // emit_SBIW(R28,func->numLocalBytes);
        log(emit, "init %dB locals", func->numLocalBytes);
        emit_local_init(func->numLocalBytes);
    }

    while (start < end)
    {
        emit_single_instruction(module, func, &start, end);
    }

    func->compiled = rtc_start_of_next_method;

    compile_close();
}
void wasm_compile_module(wasm_module_ptr module)
{
    wasm_global_init(module);
    wasm_memory_init(module);

    compile_init(module);

    wasm_function_ptr func;
    for (int i = 0; i < module->function_num; i++)
    {
        func = module->function_list[i];
        // log(compile, "func %s", func->name);
        if (is_imported(func))
        {
            log(compile, "native\tfunc %s", func->name);
            bool found = false;

            for (int j = 0; j < imports_num; j++)
            {
                if (0 == mystrcmp(func->name, imports_name[j]))
                {
                    func->native = imports[j];
                    found = true;
                    // log(compile, "found func \"%s\"", imports_name[j]);
                }
            }
            if (!found)
            {
                panicf("import function not found!");
            }
            continue; //TODO 链接外部函数
        }
        else
        {
            log(compile, "wasm\tfunc %s", func->name);
            wasm_compile_function(module, func);

            if (is_entry_func(module, func))
            {
                //TODO 暂时以第一个函数为入口函数
                // module->entry_method = func->compiled;

                log(compile, "entry: %s", func->name);
            }
        }
    }

    compile_deinit(module);
    module->entry_method = RTC_START_OF_COMPILED_CODE_SPACE/2;
    log(compile, "entry:%p", jump_vector_start_addr*2);
}


void wasm_global_init(wasm_module_ptr module)
{
    wasm_global_temp_space = NULL;
    u16 offset = 0;
    for (int i = 0; i < module->global_num; i++)
    {
        wasm_global_ptr g = &module->global_list[i];
        
        log(parse, "global's type = %d", g->type);
        switch (g->type)
        {
        case WASM_Type_i32:
            wasm_global_temp_space = sys_realloc(wasm_global_temp_space,offset+4);
            bytes init_start = g->initExpr + 1;
            bytes init_end = init_start + g->initExprSize - 1;
            logif(compile, printf("global %d's i_expr:", i); hexdump_pgm(init_start, init_end - init_start););
            ReadLEB_i32(((i32 *)(wasm_global_temp_space + offset)), &init_start, init_end);
            log(compile, "i_val: %d", *((i32 *)(wasm_global_temp_space + offset)));
            // hexdump(wasm_global_temp_space,16);
            g->offset = offset;
            offset += 4;
            break;

        default:
            panicf("global type not supported");
            break;
        }
    }
    wasm_globals_size = offset;
}

void wasm_memory_init(wasm_module_ptr module){
    if(module->memory_imported){
        //TODO import memory
    }else if(module->memory.init_page_num){
        wasm_mem_space = sys_malloc(4);
        *((u32*)wasm_mem_space) = 1111;//TODO 用于DEBUG的初始值
        log(compile,"wasm_mem_space:%p",wasm_mem_space);
        // wasm_memory_start = sys_malloc(1500);
    }
}