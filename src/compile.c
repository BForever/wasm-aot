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
#include "asm.h"
#include "memory.h"
#include <avr/pgmspace.h>
#include <string.h>
extern char __wait_end;


bool is_imported(wasm_function_ptr func)
{
    return !(func->import.moduleUtf8 == NULL && func->import.fieldUtf8 == NULL);
}
u16 __attribute__((section (".wait"))) entry_method;
translation_state  __attribute__((section (".wait"))) ts;
wasm_block_ct blct;
extern wasm_module g_module;

void branch_pc_refill(wasm_module_ptr module)
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    // logif(compile,printf("before refill\r\n");hexdump_pgm(RTC_START_OF_COMPILED_CODE_SPACE,384););
    compile_open();
    u16 pc = 0;
    while (pc < ts.pc)
    {
        // log(compile,"pc:%d",pc);
        u16 opcode = pgm_read_word_far(RTC_START_OF_COMPILED_CODE_SPACE + pc);
        if (opcode == OPCODE_JMP)
        {
            u16 label_id = pgm_read_word_far(RTC_START_OF_COMPILED_CODE_SPACE + pc + 2);
            logif(compile, printf("label %d", label_id); printf(",jmp %p", RTC_START_OF_COMPILED_CODE_SPACE + blct.block_pc[label_id]););
            emit_2_JMP((RTC_START_OF_COMPILED_CODE_SPACE + blct.block_pc[label_id]));
            emit_flush_to_flash();
            pc += 4;
        }
        else if (opcode == OPCODE_CALL)
        {
            u16 func_id = pgm_read_word_far(RTC_START_OF_COMPILED_CODE_SPACE + pc + 2);
            switch (func_id)
            {
            case embed_func_idiv:
            {
                logif(compile, printf("func %d idiv", func_id); printf(",call %p", ((u16)idiv)*2););
                emit_2_CALL(idiv);
                break;
            }
            case embed_func_udiv:
            {
                logif(compile, printf("func %d udiv", func_id); printf(",call %p", ((u16)udiv)*2););
                emit_2_CALL(udiv);
                break;
            }
            case embed_func_umul:
            {
                logif(compile, printf("func %d umul", func_id); printf(",call %p", ((u16)umul)*2););
                emit_2_CALL(umul);
                break;
            }
            case embed_func_clz32:
            {
                logif(compile, printf("func %d clz32", func_id); printf(",call %p", ((u16)udiv)*2););
                emit_2_CALL(LeadingZeros_32);
                break;
            }
            case embed_func_i32load:
            {
                logif(compile, printf("func %d i32load", func_id); printf(",call %p", ((u16)udiv)*2););
                emit_2_CALL(embed_i32load);
                break;
            }
            case embed_func_i64load:
            {
                logif(compile, printf("func %d i32load", func_id); printf(",call %p", ((u16)udiv)*2););
                emit_2_CALL(embed_i64load);
                break;
            }
            case embed_func_i32store:
            {
                logif(compile, printf("func %d i32load", func_id); printf(",call %p", ((u16)udiv)*2););
                emit_2_CALL(embed_i32store);
                break;
            }
            case embed_func_print_stack:
            {
                logif(compile, printf("func %d print_stack", func_id); printf(",call %p", ((u16)print_stack)*2););
                emit_2_CALL(print_stack);
                break;
            }
            default:
            {
                logif(compile, printf("func %d", func_id); printf(",call %p", module->function_list[func_id]->compiled * 2););
                emit_2_CALL(module->function_list[func_id]->compiled);
                break;
            }
            }

            emit_flush_to_flash();
            pc += 4;
        }
        else
        {
            wkreprog_skip(2);
            pc += 2;
        }
    }
    compile_close();
    // logif(compile,printf("after refill\r\n");hexdump_pgm(RTC_START_OF_COMPILED_CODE_SPACE,384););
}

void compile_init(wasm_module_ptr module)
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    log(temp,"start of compiled code: %6x",rtc_start_of_next_method*2);
    ts.codebuffer = sys_malloc(RTC_CODEBUFFER_SIZE * 2);
    emit_init(ts.codebuffer);
    ts.pc = 0;
    ts.stack_top = 0;
}
extern void empty_function();
extern u32 table_address;
void compile_deinit(wasm_module_ptr module)
{
    compile_open();
    table_address = wkreprog_get_raw_position();
    log(temp,"table address: %ld",table_address);
    normal_function p=empty_function;
    wkreprog_write(2,&p);
    compile_close();
    

    // 烧写跳转指令
    branch_pc_refill(module);
    log(temp,"end of compiled code: %6x",rtc_start_of_next_method*2);
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
    ts.current_func = func;
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
        emit_x_call_save();

        
        // ts.wasm_mem_space = malloc(8);
        log(compile, "global space:%p", ts.wasm_mem_space);
        // logif(emit,printf("set Z:Z+1 to %02X",(u8)wasm_globals_start);printf(":%02X",(u8)(((u16)wasm_globals_start)>>8)););
        // emit_x_PUSH_16bit(R2);
        emit_LDI(R22, (u8)ts.wasm_mem_space);
        emit_LDI(R23, ((u8)((u16)ts.wasm_mem_space >> 8)));
        emit_MOVW(R2,R22);
    }

    if (func->numLocals || func->funcType->args_num)
    {

        // emit_save_Y();
        // emit_init_Y();
        // emit_SBIW(R28,func->numLocalBytes);
        log(compile, "init %dB locals", func->numLocalBytes);

        emit_local_init(func->numLocalBytes);
        
    }

    while (start < end)
    {
        // log(temp,"where");
        emit_single_instruction(module, func, &start, end);
    }

    func->compiled = rtc_start_of_next_method;

    compile_close();
}
void wasm_compile_module(wasm_module_ptr module)
{

    wasm_global_init(module);
    
    // 加载全局变量区首地址
    // ts.wasm_mem_space = GET_FAR_ADDRESS(g_module) + sizeof(wasm_module) + 64;
    //TODO 暂时减小用于调试
    // ts.wasm_mem_space = sys_malloc(256);
    ts.wasm_mem_space = &__wait_end;
    if(!ts.wasm_mem_space){
        panicf("no space!!\n");
        asm volatile("break");
    }
    // wasm_memory_init(module);

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
                    func->compiled = imports[j];
                    found = true;
                    // log(compile, "found func \"%s\"", imports_name[j]);
                }
            }
            if (!found)
            {
                panicf("import function %s not found!",func->name);
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
                entry_method = func->compiled;

                log(compile, "entry: %s", func->name);
            }
        }
    }


    compile_deinit(module);
    // module->entry_method = RTC_START_OF_COMPILED_CODE_SPACE / 2;
}

void wasm_global_init(wasm_module_ptr module)
{
    ts.wasm_global_temp_space = NULL;
    u16 offset = 0;
    for (int i = 0; i < module->global_num; i++)
    {
        wasm_global_ptr g = &module->global_list[i];

        log(compile, "g type = %s", wasm_types_names[g->type]);
        switch (g->type)
        {
        case WASM_Type_i32:
            ts.wasm_global_temp_space = sys_realloc(ts.wasm_global_temp_space, offset + 4);
            bytes init_start = g->initExpr + 1;
            bytes init_end = init_start + g->initExprSize - 1;
            logif(compile, printf("global %d's i_expr:\r\n", i); hexdump_pgm(init_start, init_end - init_start););
            ReadLEB_i32(((i32 *)(ts.wasm_global_temp_space + offset)), &init_start, init_end);
            log(compile, "i_val: %d", *((i32 *)(ts.wasm_global_temp_space + offset)));
            // hexdump(ts.wasm_global_temp_space,16);
            g->offset = offset;
            offset += 4;
            break;

        default:
            panicf("global type not supported");
            break;
        }
    }
    ts.wasm_globals_size = offset;
}

void wasm_call_entry_method(wasm_module_ptr module)
{
    if (module->memory_imported)
    {
        //TODO import memory
    }
    else
    {
        for(int i=0;i<module->data_segment_num;i++){
            bytes initexpr = module->data_segment_list[i].initExpr+1;
            bytes end = initexpr+module->data_segment_list[i].initExprSize;
            u32 start;
            // hexdump_pgm(initexpr,4);
            ReadLEB_u32(&start,&initexpr,end);
            // mem_areas[i].start = start;
            // mem_areas[i].end = start + module->data_segment_list[i].size;
            // mem_areas[i].flash = 1;
            // mem_areas[i].target = module->data_segment_list[i].data;

            memcpy_P(ts.wasm_mem_space+ts.wasm_globals_size+start,module->data_segment_list[i].data,module->data_segment_list[i].size);
            // hexdump(ts.wasm_mem_space+ts.wasm_globals_size+start,20);
            // printf("i%p,",module->data_segment_list[i].initExpr);
            // printf("d%p,",module->data_segment_list[i].data);
            // printf("s%d,",mem_areas[i].start);
            // printf("e%d,",mem_areas[i].end);
            // printf("t%p\r\n",mem_areas[i].target);
        }
        // *((u32 *)ts.wasm_mem_space) = 1111; //TODO 用于DEBUG的初始值
        
        mem_areas[WASM_MEM_AREA_NUM-1].start = 0;
        mem_areas[WASM_MEM_AREA_NUM-1].end = (bytes)STACK_POINTER() - ts.wasm_mem_space - ts.wasm_globals_size;
        log(temp, "mem size:%d\r\n",mem_areas[WASM_MEM_AREA_NUM-1].end);
        mem_areas[WASM_MEM_AREA_NUM-1].flash = 0;
        mem_areas[WASM_MEM_AREA_NUM-1].target = ts.wasm_mem_space + ts.wasm_globals_size;
        log(temp, "copy %d B globals", ts.wasm_globals_size);
        log(temp, "mem_start:%p", ts.wasm_mem_space);
        memcpy(ts.wasm_mem_space, ts.wasm_global_temp_space, ts.wasm_globals_size);
        log(temp,"start exec");
	    ((normal_function)entry_method)();
    }
    //释放空间
    // sys_free(module->global_list);       //全局变量列表
    // sys_free(module->data_segment_list); //数据段
    // for (int i = 0; i < module->function_num; i++)
    // {
    //     sys_free(module->function_list[i]); //函数列表
    // }
    // sys_free(module->function_list); //函数列表指针
    // sys_free(ts.codebuffer);         //指令生成缓存
}