#include "instructions.h"
#include "debug.h"
#include "asm.h"
#include "utils.h"
#include "compile.h"
#include <stdlib.h>
#include <avr/pgmspace.h>

void emit_single_instruction(wasm_module_ptr module, wasm_function_ptr func, bytes *start, bytes end)
{
    u8 op = pgm_read_byte_far(*start);
    (*start)++;
    // u32 temp;
    union 
    {
        u32 num32;
        u16 num16[2];
        u8 num8[4];
    }temp;
    
    u16 base;
    switch (op)
    {
    case Call:
        // log(emit, "emiting CALL instruction...");
        ReadLEB_u32(&temp, start, end);
        log(emit, "[CALL %d]", temp.num32);
        if (temp.num16[0] >= module->function_num)
        {
            panicf("called index out of scope");
        }
        wasm_function_ptr called_func = module->function_list[temp.num16[0]];
        if (is_imported(called_func))
        {

            func_type_ptr type = called_func->funcType;

            //先检查时候需要通过内存（栈）传参
            base = R26;
            bool need_memory_pass = false;
            for (int i = 0; i < type->numArgs; i++)
            {
                if (type->argTypes[i] == WASM_Type_i32)
                {
                    base -= 4;
                    if (base < R8)
                    {
                        need_memory_pass = true;
                    }
                }
            }
            //TODO 如果需要内存传参，则空出R2345用于暂存参数(可以考虑全局暂存区方案，因为栈上有参数)
            if (need_memory_pass)
            {
            }

            //开始放置参数 TODO只做了32位参数，后续增加64位
            base = R26;
            for (int i = 0; i < type->numArgs; i++)
            {
                if (type->argTypes[i] == WASM_Type_i32)
                {
                    base -= 4;
                    if (base < R8)
                    {
                        //TODO栈传值
                    }
                    else
                    {
                        logif(emit, printf("pop32 for param %d at", i); printf(" R%d.", base););
                        emit_x_POP_32bit(base);
                    }
                }
            }
            //TODO 恢复R2345
            if (need_memory_pass)
            {
            }
            log(emit, "call func %s", called_func->name);
            emit_2_CALL(called_func->native); //TODO 不同签名类型的函数应当有不同的局部变量预处理

            if (type->returnType != WASM_Type_none)
            {
                if (type->returnType == WASM_Type_i32)
                {
                    log(emit, "push32 for return type %s", wasm_types_names[WASM_Type_i32]);
                    emit_x_PUSH_32bit(R22);
                }
            }
        }
        else
        {
            log(emit, "call func %s", called_func->name);
            int index = temp.num16[0] - module->import_num;
            log(emit, "real index %d", index);
            emit_2_CALL(jump_vector_start_addr + 2 * (index));
            // emit_2_CALL(called_func->compiled);
        }
        break;
    case End_:
        log(emit, "[END]");
        if (is_entry_func(module, func))
        { //在入口函数的尾部恢复状态
            // log(emit,"pop for call restore");
            // emit_x_call_restore();
        }
        // 如果函数有局部变量，则恢复Y指针
        if (func->numLocals)
        {
            // emit_restore_Y();
            log(emit, "deinit %dB locals", func->numLocalBytes);
            emit_local_deinit(func->numLocalBytes);
        }

        log(emit, "ret");
        emit_RET();
        break;
    case I32Const:
        ReadLEB_u32(&temp, start, end);
        log(emit, "[I32.CONST %ld]", temp.num32);
        log(emit, "load %d to R22.", temp.num32);
        emit_LDI(R22, temp.num8[0]);
        emit_LDI(R23, temp.num8[1]);
        emit_LDI(R24, temp.num8[2]);
        emit_LDI(R25, temp.num8[3]);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case I32Add:
        log(emit, "[I32.ADD]");
        log(emit, "pop32 to R22.");
        emit_x_POP_32bit(R22);
        log(emit, "pop32 to R18.");
        emit_x_POP_32bit(R18);
        log(emit, "add32 R22. = R22. + R18.");
        emit_ADD(R22, R18);
        emit_ADC(R23, R19);
        emit_ADC(R24, R20);
        emit_ADC(R25, R21);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case I32And:
        log(emit, "[I32.AND]");
        emit_x_POP_32bit(R22);
        emit_x_POP_32bit(R18);
        emit_AND(R22, R18);
        emit_AND(R23, R19);
        emit_AND(R24, R20);
        emit_AND(R25, R21);
        emit_x_PUSH_32bit(R22);
        break;
    case LocalGet:
        //读取局部变量索引
        ReadLEB_u32(&temp, start, end);
        log(emit, "[LOCAL.GET %d]", temp.num32);
        log(emit, "Load R22... from local[%d]", temp.num32 * 4);
        base = temp.num32 * 4;//这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来
        emit_LDD(R22, Y, base + 1);
        emit_LDD(R23, Y, base + 2);
        emit_LDD(R24, Y, base + 3);
        emit_LDD(R25, Y, base + 4);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case LocalSet:
        //读取局部变量索引
        ReadLEB_u32(&temp, start, end);
        log(emit, "[LOCAL.SET %d]", temp.num32);
        log(emit, "pop32 to R22...");
        emit_x_POP_32bit(R22);
        log(emit, "Store R22... to local[%d]", temp.num32 * 4);
        base = temp.num32 * 4;//这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来
        emit_STD(R22, Y, base + 1);
        emit_STD(R23, Y, base + 2);
        emit_STD(R24, Y, base + 3);
        emit_STD(R25, Y, base + 4);
        break;
    case LocalTee:
        //读取局部变量索引
        ReadLEB_u32(&temp, start, end);
        log(emit, "[LOCAL.TEE %d]", temp.num32);
        log(emit, "pop32 to R22...");
        emit_x_POP_32bit(R22);
        log(emit, "Store R22... to local[%d]", temp.num32 * 4);
        base = temp.num32 * 4;//这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来
        emit_STD(R22, Y, base + 1);
        emit_STD(R23, Y, base + 2);
        emit_STD(R24, Y, base + 3);
        emit_STD(R25, Y, base + 4);
        // 比Set多一个Push操作
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case GlobalGet:
        //读取全局变量索引
        ReadLEB_u32(&temp, start, end);
        log(emit, "[GLOBAL.GET %d]", temp.num32);
        log(emit, "Load R22. from global[%d]", module->global_list[temp.num16[0]].offset);
        emit_LDD(R22, Z, module->global_list[temp.num16[0]].offset);
        emit_LDD(R23, Z, module->global_list[temp.num16[0]].offset + 1);
        emit_LDD(R24, Z, module->global_list[temp.num16[0]].offset + 2);
        emit_LDD(R25, Z, module->global_list[temp.num16[0]].offset + 3);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case GlobalSet:
        ReadLEB_u32(&temp, start, end);
        log(emit, "[GLOBAL.SET %d]", temp.num32);
        log(emit, "pop32 to R22.");
        emit_x_POP_32bit(R22);
        log(emit, "Store R22. to global[%d]", module->global_list[temp.num16[0]].offset);
        emit_STD(R22, Z, module->global_list[temp.num16[0]].offset);
        emit_STD(R23, Z, module->global_list[temp.num16[0]].offset + 1);
        emit_STD(R24, Z, module->global_list[temp.num16[0]].offset + 2);
        emit_STD(R25, Z, module->global_list[temp.num16[0]].offset + 3);
        break;
    case I32Load:
        // 读取对齐标签，丢弃
        ReadLEB_u32(&temp, start, end);
        // 读取offset1
        ReadLEB_u32(&temp, start, end);
        log(emit, "[I32.LOAD %d]", temp.num32);
        // temp = global_size + offset1 越过全局变量区域
        temp.num32 += wasm_globals_size;
        base = temp.num16[0];//这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来
        //读取offset2
        log(emit, "pop32 offset to R18.");
        emit_x_POP_32bit(R18);
        // Z = Z + offset2 由于AVR地址为16位，因此可以略去高16位偏移的计算
        // emit_x_PUSH_16bit(RZ);
        emit_ADD(RZ, R18);
        emit_ADC(RZ + 1, R19);
        // 储存到Z + offset2 + global_size + offset1
        log(emit, "ldd");
        emit_LDD(R22, Z, base);
        emit_LDD(R23, Z, base + 1);
        emit_LDD(R24, Z, base + 2);
        emit_LDD(R25, Z, base + 3);
        // 恢复Z指针
        // emit_x_POP_16bit(RZ);
        emit_SUB(RZ, R18);
        emit_SBC(RZ + 1, R19);
        emit_x_PUSH_32bit(R22);
        break;
    case I32Store:
        // 读取对齐标签，丢弃
        ReadLEB_u32(&temp, start, end);
        // 读取offset1
        ReadLEB_u32(&temp, start, end);
        log(emit, "[I32.STORE %d]", temp.num32);
        // temp = global_size + offset1 越过全局变量区域
        temp.num32 += wasm_globals_size;
        base = temp.num32;//这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来
        //读取要储存的值到R22...
        log(emit, "pop32 val to R22.");
        emit_x_POP_32bit(R22);
        //读取offset2到R18.
        log(emit, "pop32 offset to R18.");
        emit_x_POP_32bit(R18);
        // Z = Z + offset2 由于AVR地址为16位，因此可以略去高16位偏移的计算
        emit_ADD(RZ, R18);
        emit_ADC(RZ + 1, R19);
        // 储存到Z + offset2 + global_size + offset1
        log(emit, "std");
        emit_STD(R22, Z, base);
        emit_STD(R23, Z, base + 1);
        emit_STD(R24, Z, base + 2);
        emit_STD(R25, Z, base + 3);
        // 恢复Z指针
        emit_SUB(RZ, R18);
        emit_SBC(RZ + 1, R19);
        break;
    default:
        panicf("unsupported instructions: %02X ", op);
        break;
    }
}