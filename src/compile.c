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
#include "safety_check.h"
#include <avr/pgmspace.h>
#include <string.h>
extern char __wait_end;

u16 __attribute__((section(".wait"))) entry_method;
translation_state __attribute__((section(".wait"))) ts;
wasm_block_ct blct;
extern wasm_module g_module;

void branch_pc_refill(wasm_module_ptr module)
{
    RTC_SET_START_OF_NEXT_METHOD(RTC_START_OF_COMPILED_CODE_SPACE);
    // logif(compile,printf("before refill\r\n");hexdump_pgm(RTC_START_OF_COMPILED_CODE_SPACE,384););
    compile_open();
    u16 pc = 0;
    u16 prev_pc = ts.pc;
    while (pc < prev_pc)
    {
        // log(compile,"pc:%d",pc);
        u16 opcode = pgm_read_word_far(RTC_START_OF_COMPILED_CODE_SPACE + pc);
        
        if (opcode == OPCODE_JMP)
        {
            u16 label_id = pgm_read_word_far(RTC_START_OF_COMPILED_CODE_SPACE + pc + 2);
            log(compile, "label %d,jmp %p", label_id,RTC_START_OF_COMPILED_CODE_SPACE + blct.block_pc[label_id]);
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
                log(compile, "func %d idiv, call %p", func_id, ((u16)idiv) * 2);
                emit_2_CALL(idiv);
                break;
            }
            case embed_func_udiv:
            {
                log(compile, "func %d udiv, call %p", func_id, ((u16)udiv) * 2);
                emit_2_CALL(udiv);
                break;
            }
            case embed_func_umul:
            {
                log(compile, "func %d umul, call %p", func_id, ((u16)umul) * 2);
                emit_2_CALL(umul);
                break;
            }
            case embed_func_clz32:
            {
                log(compile, "func %d clz32, call %p", func_id, ((u16)LeadingZeros_32) * 2);
                emit_2_CALL(LeadingZeros_32);
                break;
            }
            case embed_func_i32load:
            {
                log(compile, "func %d i32load, call %p", func_id, ((u16)embed_i32load) * 2);
                emit_2_CALL(embed_i32load);
                break;
            }
            case embed_func_i64load:
            {
                log(compile,"func %d i64load, call %p", func_id, ((u16)embed_i64load) * 2);
                emit_2_CALL(embed_i64load);
                break;
            }
            case embed_func_i32store:
            {
                log(compile,"func %d i32load, call %p", func_id, ((u16)embed_i32store) * 2);
                emit_2_CALL(embed_i32store);
                break;
            }
            case embed_func_i32store16:
            {
                log(compile,"func %d i32load16, call %p", func_id, ((u16)embed_i32store16) * 2);
                emit_2_CALL(embed_i32store16);
                break;
            }
            case embed_func_i32store8:
            {
                log(compile,"func %d i32load8, call %p", func_id, ((u16)embed_i32store8) * 2);
                emit_2_CALL(embed_i32store8);
                break;
            }
            case embed_func_print_stack:
            {
                log(compile,"func %d print_stack, call %p", func_id, ((u16)print_stack) * 2);
                emit_2_CALL(print_stack);
                break;
            }
            case embed_func_count:
            {
                log(compile, "func %d count_func, call %p", func_id, ((u16)count_func) * 2);
                emit_2_CALL(count_func);
                break;
            }
            default:
            {
                log(compile, "func %d, call %p",func_id, module->function_list[func_id]->compiled * 2);
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
    log(temp, "start of compiled code: %6x", rtc_start_of_next_method * 2);
    ts.codebuffer = sys_malloc(RTC_CODEBUFFER_SIZE * 2);
    emit_init(ts.codebuffer);
    ts.pc = 0;
    ts.stack_top = 0;
}
extern void empty_function();
extern u32 table_address;
void compile_deinit(wasm_module_ptr module)
{
    // compile_open();
    // table_address = wkreprog_get_raw_position();
    // log(temp, "table address: %ld", table_address);
    // normal_function p = empty_function;
    // wkreprog_write(2, &p);
    // compile_close();

    // 烧写跳转指令
    branch_pc_refill(module);
    log(temp, "end of compiled code: %6x", rtc_start_of_next_method * 2);
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
        emit_MOVW(R2, R22);
    }

    if (func->numLocals || func->funcType->args_num)
    {

        // emit_save_Y();
        // emit_init_Y();
        // emit_SBIW(R28,func->numLocalBytes);
        log(compile, "init %dB locals", func->numLocalBytes);

        emit_local_init(func->numLocalBytes);
    }
#if count_stack_check
    emit_2_CALL(embed_func_count);
#endif
#if count_lowest_stack
    emit_2_CALL(embed_func_print_stack);
#endif
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

    ts.wasm_mem_space = &__wait_end;
    if (!ts.wasm_mem_space)
    {
        panicf("no space!!\n");
        asm volatile("break");
    }

    compile_init(module);

    wasm_function_ptr func;
    for (int i = 0; i < module->function_num; i++)
    {
        func = module->function_list[i];
        // log(compile, "func %s", func->name);
        if (i<module->import_num)
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
                panicf("import function %s not found!", func->name);
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
u32 __attribute__((section(".wait"))) module_heap_base;
void wasm_global_init(wasm_module_ptr module)
{
    ts.wasm_global_temp_space = NULL;
    u16 offset = 0;
    u32 temp;
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
            ReadLEB_i32(&temp, &init_start, init_end);
            *((i32 *)(ts.wasm_global_temp_space + offset))=temp;
            if(i==0){
                module_heap_base = temp;
            }

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
extern u16 __attribute__((section(".wait"))) malloc_record;
extern u16 __attribute__((section(".wait"))) lowest_stack;
void wasm_call_entry_method(wasm_module_ptr module)
{
    if (module->memory_imported)
    {
        //TODO import memory
    }
    else
    {
        //保存memcpy的参数在最后进行拷贝，防止出错
        u16 cpy_d, cpy_s, cpy_n;
        u16 pcpy_d, pcpy_n;
        u32 pcpy_s;
        pcpy_d = 0;

        if (module->data_segment_num == 0)
        {
            mem_areas[1].start = 0;
            mem_areas[1].end = (bytes)STACK_POINTER() - ts.wasm_mem_space - ts.wasm_globals_size;
            mem_areas[1].target = ts.wasm_mem_space + ts.wasm_globals_size;
            log(temp, "mem[1]:%d-%d at D:%ld,size %d", mem_areas[1].start, mem_areas[1].end, mem_areas[1].target,mem_areas[1].end-mem_areas[1].start);
            malloc_record = 0;
        }
#if flash_data
        else if (module->data_segment_num == 1)
        {
            // Flash
            bytes initexpr = module->data_segment_list[0].initExpr + 1;
            bytes end = initexpr + module->data_segment_list[0].initExprSize;
            u32 start;
            // hexdump_pgm(initexpr,4);
            ReadLEB_u32(&start, &initexpr, end);
            mem_areas[0].start = start;
            mem_areas[0].end = start + module->data_segment_list[0].size;
            mem_areas[0].target = module->data_segment_list[0].data;
            log(temp, "mem[0]:%d-%d at P:%ld,size %d", mem_areas[0].start, mem_areas[0].end, mem_areas[0].target,mem_areas[0].end-mem_areas[0].start);
            // RAM
            mem_areas[1].start = mem_areas[0].end;
            mem_areas[1].end = mem_areas[1].start + (bytes)STACK_POINTER() - ts.wasm_mem_space - ts.wasm_globals_size;
            mem_areas[1].target = ts.wasm_mem_space + ts.wasm_globals_size;
            log(temp, "mem[1]:%d-%d at D:%ld,size %d", mem_areas[1].start, mem_areas[1].end, mem_areas[1].target,mem_areas[1].end-mem_areas[1].start);
            malloc_record = module_heap_base;
            
        }
#else
        else if (module->data_segment_num == 1)
        {
            // RAM 1
            bytes initexpr = module->data_segment_list[0].initExpr + 1;
            bytes end = initexpr + module->data_segment_list[0].initExprSize;
            u32 start;
            // hexdump_pgm(initexpr,4);
            ReadLEB_u32(&start, &initexpr, end);
            mem_areas[1].start = start;
            mem_areas[1].end = start + module->data_segment_list[0].size;
            mem_areas[1].target = ts.wasm_mem_space + ts.wasm_globals_size;
            pcpy_d = ts.wasm_mem_space + ts.wasm_globals_size;
            pcpy_s = module->data_segment_list[0].data;
            pcpy_n = module->data_segment_list[0].size;
            log(temp, "mem[1]:%d-%d at D:%ld,size %d", mem_areas[1].start, mem_areas[1].end, mem_areas[1].target,mem_areas[1].end-mem_areas[1].start);
            // RAM 2: extend RAM 1'end
            malloc_record = module_heap_base;
            mem_areas[1].end = mem_areas[1].end + ((bytes)STACK_POINTER() - mem_areas[1].target - module->data_segment_list[0].size);
            log(temp, "mem[1]ex:%d-%d at D:%ld,size %d", mem_areas[1].start, mem_areas[1].end, mem_areas[1].target,mem_areas[1].end-mem_areas[1].start);
        }
#endif
        else if (module->data_segment_num == 2)
        {
            // Flash
            bytes initexpr = module->data_segment_list[0].initExpr + 1;
            bytes end = initexpr + module->data_segment_list[0].initExprSize;
            u32 start;
            // hexdump_pgm(initexpr,4);
            ReadLEB_u32(&start, &initexpr, end);
            mem_areas[0].start = start;
            mem_areas[0].end = start + module->data_segment_list[0].size;
            mem_areas[0].target = module->data_segment_list[0].data;
            log(temp, "mem[0]:%d-%d at P:%ld,size %d", mem_areas[0].start, mem_areas[0].end, mem_areas[0].target,mem_areas[0].end-mem_areas[0].start);
            // RAM 1
            initexpr = module->data_segment_list[1].initExpr + 1;
            end = initexpr + module->data_segment_list[1].initExprSize;
            // hexdump_pgm(initexpr,4);
            ReadLEB_u32(&start, &initexpr, end);
            mem_areas[1].start = start;
            mem_areas[1].end = start + module->data_segment_list[1].size;
            mem_areas[1].target = ts.wasm_mem_space + ts.wasm_globals_size;
            pcpy_d = ts.wasm_mem_space + ts.wasm_globals_size;
            pcpy_s = module->data_segment_list[1].data;
            pcpy_n = module->data_segment_list[1].size;
            log(temp, "mem[1]:%d-%d at D:%ld,size %d", mem_areas[1].start, mem_areas[1].end, mem_areas[1].target,mem_areas[1].end-mem_areas[1].start);
            // RAM 2: extend RAM 1'end
            malloc_record = module_heap_base;
            mem_areas[1].end = mem_areas[1].end + ((bytes)STACK_POINTER() - mem_areas[1].target - module->data_segment_list[1].size);
            log(temp, "mem[1]ex:%d-%d at D:%ld,size %d", mem_areas[1].start, mem_areas[1].end, mem_areas[1].target,mem_areas[1].end-mem_areas[1].start);
        }
        log(temp, "mem_start:%p", ts.wasm_mem_space);
        log(temp, "copy %d B globals", ts.wasm_globals_size);
        log(temp,"memcpy from %ld to %d, size %d",pcpy_s,pcpy_d,pcpy_n);
        if(pcpy_d){
            memcpy_PF(pcpy_d,pcpy_s,pcpy_n);
        }
        memcpy(ts.wasm_mem_space, ts.wasm_global_temp_space, ts.wasm_globals_size);
        log(temp, "start exec: %p",entry_method);
        ((normal_function)entry_method)();
        log(temp, "counter:%ld", global_counter);
        log(temp, "max stack usage:%d", 0x10ff-lowest_stack);
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