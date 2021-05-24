#include "instructions.h"
#include "debug.h"
#include "asm.h"
#include "utils.h"
#include "compile.h"
#include <stdlib.h>



void emit_single_instruction(wasm_module_ptr module, wasm_function_ptr func, bytes *start, bytes end)
{
    u8 op = **start;
    (*start)++;
    u32 temp;
    switch (op)
    {
    case Call:
        // log(emit, "emiting CALL instruction...");
        ReadLEB_u32(&temp, start, end);
        if (temp >= module->function_num)
        {
            panicf("called index out of scope");
        }
        wasm_function_ptr called_func = module->function_list[temp];
        if (is_imported(called_func))
        {
            
            func_type_ptr type = called_func->funcType;
            
            //先检查时候需要通过内存（栈）传参
            u8 base = R26;
            bool need_memory_pass=false;
            for(int i=0;i<type->numArgs;i++){
                if(type->argTypes[i]==WASM_Type_i32){
                    base-=4;
                    if(base<R8){
                        need_memory_pass=true;
                    }
                }
            }
            //TODO 如果需要内存传参，则空出R2345用于暂存参数(可以考虑全局暂存区方案，因为栈上有参数)
            if(need_memory_pass){  
            }

            //开始放置参数 TODO只做了32位参数，后续增加64位
            base = R26;
            for(int i=0;i<type->numArgs;i++){
                if(type->argTypes[i]==WASM_Type_i32){
                    base-=4;
                    if(base<R8){
                        //TODO栈传值
                    }else{
                        logif(emit,printf("pop32 for param %d at:",i);printf(" R%d ",base);printf(" R%d ",base+1);printf(" R%d ",base+2);printf(" R%d ",base+3););
                        emit_x_POP_32bit(base);
                    }
                }
            }
            //TODO 恢复R2345
            if(need_memory_pass){
                
            }
            log(emit,"call imported function %s",called_func->name);
            emit_2_CALL(called_func->native); //TODO 不同签名类型的函数应当有不同的局部变量预处理

            if(type->returnType!=WASM_Type_none){
                if(type->returnType==WASM_Type_i32){
                    log(emit,"push32 for return type %s",wasm_types_names[WASM_Type_i32]);
                    emit_x_PUSH_32bit(R22);
                }
            }
        }
        else
        {
            log(emit,"call compiled function %s",called_func->name);
            int index = temp-module->import_num;
            emit_2_CALL(jump_vector_start_addr+2*(index));
            // emit_2_CALL(called_func->compiled);
        }
        break;
    case End_:
        if(is_entry_func(module,func)){//在入口函数的尾部恢复状态
            log(emit,"pop for call restore");
            emit_x_call_restore();
        }
        log(emit, "ret");
        emit_RET();
        break;
    case I32Const:
        ReadLEB_u32(&temp,start,end);
        log(emit, "load const to R22,R23,R24,R25");
        emit_LDI(R22,(u8)temp);
        emit_LDI(R23,(u8)temp>>8);
        emit_LDI(R24,(u8)temp>>16);
        emit_LDI(R25,(u8)temp>>24);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case I32Add:
        log(emit, "pop32 to R22...");
        emit_x_POP_32bit(R22);
        log(emit, "pop32 to R18...");
        emit_x_POP_32bit(R18);
        log(emit, "add32 R22... = R22... + R18...");
        emit_ADD(R22,R18);
        emit_ADC(R23,R19);
        emit_ADC(R24,R20);
        emit_ADC(R25,R21);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case I32And:
        emit_x_POP_32bit(R22);
        emit_x_POP_32bit(R18);
        emit_AND(R22,R18);
        emit_AND(R23,R19);
        emit_AND(R24,R20);
        emit_AND(R25,R21);
        emit_x_PUSH_32bit(R22);
        break;
    case LocalGet:
        //读取局部变量索引
        ReadLEB_u32(&temp,start,end);
        //保存原Y指针
        //将SP读取到Y指针，[Y+1+局部变量偏移]即局部变量地址
        //

        break;
    default:
        panicf("unsupported instructions: %02X ", op);
        break;
    }
}