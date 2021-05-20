#include "instructions.h"
#include "debug.h"
#include "asm.h"

void emit_single_instruction(wasm_module_ptr module, wasm_function_ptr func, bytes *start, bytes end)
{
    u8 op = **start;
    (*start)++;
u32 temp;
    switch (op)
    {
    case Call:
        log(emit, "emiting CALL instruction...");
        u32 index;
        ReadLEB_u32(&index, start, end);
        log(emit, "called function index :%d", index);
        if (index >= module->function_num)
        {
            panicf("called index out of scope");
        }
        wasm_function_ptr called_func = module->function_list[index];
        if (is_imported(called_func))
        {
            
            emit_2_CALL(called_func->native); //TODO 不同签名类型的函数应当有不同的局部变量预处理
        }
        else
        {
            emit_2_CALL(called_func->compiled);
        }
        break;
    case End_:
        log(emit, "emiting END instruction...");
        if(is_entry_func(func)){
            emit_x_pop_all();
        }
        emit_RET();
        break;
    case I32Const:
        
        ReadLEB_u32(&temp,start,end);
        emit_LDI(R22,(u8)temp);
        emit_LDI(R23,(u8)temp>>8);
        emit_LDI(R24,(u8)temp>>16);
        emit_LDI(R25,(u8)temp>>24);
        emit_x_PUSH_32bit(R22);
        break;
    case I32Add:
        emit_x_POP_32bit(R22);
        emit_x_POP_32bit(R18);
        emit_ADD(R22,R18);
        emit_ADD(R23,R19);
        emit_ADD(R24,R20);
        emit_ADD(R25,R21);
        emit_x_PUSH_32bit(R22);
        break;
    default:
        panicf("unsupported instructions: %02X ", op);
        break;
    }
}