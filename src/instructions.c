#include "instructions.h"
#include "debug.h"
#include "asm.h"
#include "utils.h"
#include "compile.h"
#include "wkreprog_impl.h"
#include <stdlib.h>
#include <avr/pgmspace.h>
extern u16 __brkval;
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
    } operand;

    u16 base;
    switch (op)
    {
    case Call:
        // log(emit, "emiting CALL instruction...");
        ReadLEB_u32(&operand, start, end);
        log(emit, "[CALL %d]", operand.num32);
        if (operand.num16[0] >= module->function_num)
        {
            panicf("called index out of scope");
        }
        wasm_function_ptr called_func = module->function_list[operand.num16[0]];
        if (is_imported(called_func))
        {

            func_type_ptr type = called_func->funcType;

            //先检查时候需要通过内存（栈）传参
            base = R26;
            bool need_memory_pass = false;
            for (int i = 0; i < type->args_num; i++)
            {
                if (type->args_type_list[i] == WASM_Type_i32)
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
            for (int i = 0; i < type->args_num; i++)
            {
                if (type->args_type_list[i] == WASM_Type_i32)
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
                        ts.pc += 8;
                    }
                }
            }
            //TODO 恢复R2345
            if (need_memory_pass)
            {
            }
            log(emit, "call func %s", called_func->name);
            emit_2_CALL(operand.num16[0]); //TODO 不同签名类型的函数应当有不同的局部变量预处理
            ts.pc += 4;

            //TODO 抛弃栈传递的参数

            //返回值压栈
            if (type->returnType != WASM_Type_none)
            {
                if (type->returnType == WASM_Type_i32)
                {
                    log(emit, "push32 for return type %s", wasm_types_names[WASM_Type_i32]);
                    emit_x_PUSH_32bit(R22);
                    ts.pc += 8;
                }
            }
        }
        else
        {
            func_type_ptr type = called_func->funcType;
            log(emit, "call func %s", called_func->name);
            emit_2_CALL(operand.num16[0]);
            ts.pc += 4;
            //drop参数
            for (int i = 0; i < type->args_num; i++)
            {
                log(emit, "drop32");
                emit_x_POP_32bit(R18);
                ts.pc += 8;
                ts.stack_top--;
            }
            // 结果压栈
            if (type->returnType == WASM_Type_i32)
            {
                log(emit, "push32 for return type %s", wasm_types_names[WASM_Type_i32]);
                emit_x_PUSH_32bit(R22);
                ts.stack_top++;
                ts.pc += 8;
            }
            log(emit, "s: %d", ts.stack_top);
        }
        break;
    case Br:
        ReadLEB_u32(&operand, start, end);
        log(emit, "[BR %d]", operand.num32);
        log(emit, "%d", ts.pc);
        emit_2_JMP((blct.block_label[blct.top - 1 - operand.num16[0]]) * 2); //填充对应Block的ID(emit宏会将地址除以2)
        ts.pc += 4;
        break;
    case BrIf: //TODO
        ReadLEB_u32(&operand, start, end);
        log(emit, "[BR_IF %d]", operand.num32);

        // 获取操作数
        emit_x_POP_32bit(R22);
        ts.stack_top--;
        log(emit, "s: %d", ts.stack_top);
        // 获取0
        emit_MOV(R18, R1);
        emit_MOV(R19, R1);
        emit_MOV(R20, R1);
        emit_MOV(R21, R1);
        // 与0比较
        emit_CP(R22, R18);
        emit_CPC(R23, R19);
        emit_CPC(R24, R20);
        emit_CPC(R25, R21);
        // 非0则跳转
        log(emit, "br %d", 4 + 8 * (ts.stack_top - blct.block_stack[blct.top - 1 - operand.num16[0]]));
        emit_BREQ(4 + 8 * (ts.stack_top - blct.block_stack[blct.top - 1 - operand.num16[0]]));
        ts.pc += 26;
        // 跳转前恢复栈平衡
        for (int i = ts.stack_top; i > blct.block_stack[blct.top - 1 - operand.num16[0]]; i--)
        {
            log(emit, "pop stack");
            if (i == ts.stack_top)
            {
                emit_x_POP_32bit(R22);
            }
            else
            {
                emit_x_POP_32bit(R18);
            }
            ts.pc += 8;
        }
        emit_2_JMP((blct.block_label[blct.top - 1 - operand.num16[0]]) * 2); //填充对应Block的ID(emit宏会将地址除以2)
        ts.pc += 4;
        break;
    case BrTable: //TODO
        break;
    case Block:
        // 读取返回值类型
        ReadLEB_i7(&operand, start, end);
        NormalizeType(&operand.num8[1], operand.num8[0]);
        log(emit, "[BLOCK %s]", wasm_types_names[operand.num8[1]]);
        // 生成标签ID并入栈
        blct.block_label[blct.top++] = blct.next_id++;
        blct.block_stack[blct.top - 1] = ts.stack_top;
        blct.block_type[blct.top - 1] = operand.num8[1];
        blct.block_pc[blct.next_id - 1] = 0; //表示非loop
        break;
    case Loop:
        // 读取返回值类型
        ReadLEB_i7(&operand, start, end);
        NormalizeType(&operand.num8[1], operand.num8[0]);
        log(emit, "[LOOP %s]", wasm_types_names[operand.num8[1]]);
        // 生成标签ID并入栈
        blct.block_label[blct.top++] = blct.next_id++;
        blct.block_stack[blct.top - 1] = ts.stack_top;
        blct.block_type[blct.top - 1] = operand.num8[1];
        blct.block_pc[blct.next_id - 1] = ts.pc; //loop的跳转目标为loop起始
        break;
    case End_:
        log(emit, "[END]:%p", RTC_START_OF_COMPILED_CODE_SPACE + ts.pc);
        if (blct.top) // 还在block内部
        {
            log(emit, "of block %d", blct.top);

            // 结束前恢复栈平衡
            int count = ts.stack_top - blct.block_stack[--blct.top];
            for (int i = 0; i < count; i++)
            {
                log(emit, "pop stack");
                if (i == 0)
                {
                    emit_x_POP_32bit(R22);
                }
                else
                {
                    emit_x_POP_32bit(R18);
                }
                ts.stack_top--;
                ts.pc += 8;
            }
            if (!blct.block_pc[blct.block_label[blct.top]])
            {
                blct.block_pc[blct.block_label[blct.top]] = ts.pc; //没有填充PC（非loop）则填充END的PC
            }
            if (blct.block_type[blct.top] != WASM_Type_none)
            {
                log(emit, "push res %s", wasm_types_names[blct.block_type[blct.top]]);
                emit_x_PUSH_32bit(R22);
                ts.pc += 8;
                ts.stack_top++;
                log(emit, "s: %d", ts.stack_top);
            }
        }
        else // 到达函数尾部的END
        {
            log(emit, "func end");
            if (is_entry_func(module, func))
            { //在入口函数的尾部恢复状态
                // log(emit,"pop for call restore");
                // emit_x_call_restore();
            }
            // 如果函数有局部变量，则恢复Y指针
            if (func->numLocals || func->funcType->args_num)
            {
                if(func->funcType->returnType==WASM_Type_i32){
                    log(emit, "pop32 for result %s",func->funcType->returnType);
                    emit_x_POP_32bit(R22);
                    ts.pc+=8;
                    ts.stack_top--;
                }
                // emit_restore_Y();
                log(emit, "deinit %dB locals", func->numLocalBytes);
                emit_local_deinit(func->numLocalBytes);
                ts.pc += 16;
            }

            log(emit, "ret");
            emit_RET();
            ts.pc += 2;
        }
        break;
    case I32Const:
        ReadLEB_u32(&operand, start, end);
        log(emit, "[I32.CONST %ld]", operand.num32);
        log(emit, "load %ld to R22.", operand.num32);
        emit_LDI(R22, operand.num8[0]);
        emit_LDI(R23, operand.num8[1]);
        emit_LDI(R24, operand.num8[2]);
        emit_LDI(R25, operand.num8[3]);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        ts.pc += 16;
        ts.stack_top++;
        log(emit, "s: %d", ts.stack_top);
        break;
    case Drop:
        log(emit, "[DROP]");
        log(emit, "pop32");
        emit_x_POP_32bit(R22);
        ts.pc += 8;
        ts.stack_top--;
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
        ts.pc += 32;
        ts.stack_top--;
        log(emit, "s: %d", ts.stack_top);
        break;
    case I32Sub:
        log(emit, "[I32.SUB]");
        // log(emit, "pop32 to R22.");
        emit_x_POP_32bit(R18);
        // log(emit, "pop32 to R18.");
        emit_x_POP_32bit(R22);
        // log(emit, "add32 R22. = R22. + R18.");
        emit_SUB(R22, R18);
        emit_SBC(R23, R19);
        emit_SBC(R24, R20);
        emit_SBC(R25, R21);
        // log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        ts.pc += 32;
        ts.stack_top--;
        log(emit, "s: %d", ts.stack_top);
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
        ts.pc += 32;
        ts.stack_top--;
        log(emit, "s: %d", ts.stack_top);
        break;
    case LocalGet:
        //读取局部变量索引
        ReadLEB_u32(&operand, start, end);
        log(emit, "[LOCAL.GET %d]", operand.num32);

        if (operand.num16[0] >= ts.current_func->funcType->args_num)
        { //本地变量
            //这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来计算
            base = operand.num16[0] - ts.current_func->funcType->args_num;
            base *= 4;
            log(emit, "Ld R22. from local[%d]", base);
        }
        else
        { //参数
            base = ts.current_func->funcType->args_num - 1 - operand.num16[0];
            base = ts.current_func->numLocalBytes + 4 + base * 4;
            log(emit, "Ld R22. from param[%d]", base);
        }

        emit_LDD(R22, Y, base + 1);
        emit_LDD(R23, Y, base + 2);
        emit_LDD(R24, Y, base + 3);
        emit_LDD(R25, Y, base + 4);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        ts.pc += 16;
        ts.stack_top++;
        log(emit, "s: %d", ts.stack_top);
        break;
    case LocalSet:
        //读取局部变量索引
        ReadLEB_u32(&operand, start, end);
        log(emit, "[LOCAL.SET %d]", operand.num32);
        log(emit, "pop32 to R22...");
        emit_x_POP_32bit(R22);

        if (operand.num16[0] >= ts.current_func->funcType->args_num)
        { //本地变量
            //这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来计算
            base = operand.num16[0] - ts.current_func->funcType->args_num;
            base *= 4;
            log(emit, "Store R22... to local[%d]", base);
        }
        else
        {
            base = ts.current_func->funcType->args_num - 1 - operand.num16[0];
            base = ts.current_func->numLocalBytes + 4 + base * 4;
            log(emit, "Store R22... to param[%d]", base);
        }
        emit_STD(R22, Y, base + 1);
        emit_STD(R23, Y, base + 2);
        emit_STD(R24, Y, base + 3);
        emit_STD(R25, Y, base + 4);
        ts.pc += 16;
        ts.stack_top--;
        log(emit, "s: %d", ts.stack_top);
        break;
    case LocalTee:
        //读取局部变量索引
        ReadLEB_u32(&operand, start, end);
        log(emit, "[LOCAL.TEE %d]", operand.num32);
        log(emit, "pop32 to R22...");
        emit_x_POP_32bit(R22);
        if (operand.num16[0] >= ts.current_func->funcType->args_num)
        { //本地变量
            //这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来计算
            base = operand.num16[0] - ts.current_func->funcType->args_num;
            base *= 4;
            log(emit, "Store R22... to local[%d]", base);
        }
        else
        {
            base = ts.current_func->funcType->args_num - 1 - operand.num16[0];
            base = ts.current_func->numLocalBytes + 4 + base * 4;
            log(emit, "Store R22... to param[%d]", base);
        }
        emit_STD(R22, Y, base + 1);
        emit_STD(R23, Y, base + 2);
        emit_STD(R24, Y, base + 3);
        emit_STD(R25, Y, base + 4);
        // 比Set多一个Push操作
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        ts.pc += 24;
        break;
    case GlobalGet:
        //读取全局变量索引
        ReadLEB_u32(&operand, start, end);
        log(emit, "[GLOBAL.GET %d]", operand.num32);
        log(emit, "Load R22. from global[%d]", module->global_list[operand.num16[0]].offset);
        emit_LDD(R22, Z, module->global_list[operand.num16[0]].offset);
        emit_LDD(R23, Z, module->global_list[operand.num16[0]].offset + 1);
        emit_LDD(R24, Z, module->global_list[operand.num16[0]].offset + 2);
        emit_LDD(R25, Z, module->global_list[operand.num16[0]].offset + 3);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        ts.pc += 16;
        ts.stack_top++;
        log(emit, "s: %d", ts.stack_top);
        break;
    case GlobalSet:
        ReadLEB_u32(&operand, start, end);
        log(emit, "[GLOBAL.SET %d]", operand.num32);
        log(emit, "pop32 to R22.");
        emit_x_POP_32bit(R22);
        log(emit, "Store R22. to global[%d]", module->global_list[operand.num16[0]].offset);
        emit_STD(R22, Z, module->global_list[operand.num16[0]].offset);
        emit_STD(R23, Z, module->global_list[operand.num16[0]].offset + 1);
        emit_STD(R24, Z, module->global_list[operand.num16[0]].offset + 2);
        emit_STD(R25, Z, module->global_list[operand.num16[0]].offset + 3);
        ts.pc += 16;
        ts.stack_top--;
        log(emit, "s: %d", ts.stack_top);
        break;
    case I32Load:
        // 读取对齐标签，丢弃
        ReadLEB_u32(&operand, start, end);
        // 读取offset1
        ReadLEB_u32(&operand, start, end);
        log(emit, "[I32.LOAD %d]", operand.num32);
        // temp = global_size + offset1 越过全局变量区域
        operand.num32 += ts.wasm_globals_size;
        base = operand.num16[0]; //这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来
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
        ts.pc += 32;
        break;
    case I32Store:
        // 读取对齐标签，丢弃
        ReadLEB_u32(&operand, start, end);
        // 读取offset1
        ReadLEB_u32(&operand, start, end);
        log(emit, "[I32.STORE %d]", operand.num32);
        // temp = global_size + offset1 越过全局变量区域
        operand.num32 += ts.wasm_globals_size;
        base = operand.num32; //这里有奇怪的bug，u32 无法参与加法计算，因此用u16的base变量来
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
        ts.pc += 32;
        ts.stack_top -= 2;
        log(emit, "s: %d", ts.stack_top);
        break;
    default:
        panicf("unsupported instructions: %02X ", op);
        break;
    }
}