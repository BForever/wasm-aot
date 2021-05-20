#include "instructions.h"
#include "debug.h"
#include "asm.h"

void compile_single_instruction(wasm_module_ptr module, wasm_function_ptr func, bytes *start, bytes end)
{
    u8 op = **start;
    *start++;
    switch (op)
    {
    case Call:
        log(compile, "compiling CALL instruction...");
        u32 index;
        ReadLEB_u32(&index, start, end);
        log(compile, "called function index :%d", index);
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
        emit_RET();
        break;
    default:
        panicf("unsupported instructions!");
        break;
    }
}