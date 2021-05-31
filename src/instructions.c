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
    u32 temp;
    u8 base;
    switch (op)
    {
    case Call:
        // log(emit, "emiting CALL instruction...");
        ReadLEB_u32(&temp, start, end);
        log(emit,"[CALL %d]",temp);
        if (temp >= module->function_num)
        {
            panicf("called index out of scope");
        }
        wasm_function_ptr called_func = module->function_list[temp];
        if (is_imported(called_func))
        {
            
            func_type_ptr type = called_func->funcType;
            
            //先检查时候需要通过内存（栈）传参
            base = R26;
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
                        logif(emit,printf("pop32 for param %d at",i);printf(" R%d.",base););
                        emit_x_POP_32bit(base);
                    }
                }
            }
            //TODO 恢复R2345
            if(need_memory_pass){
                
            }
            log(emit,"call func %s",called_func->name);
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
            log(emit,"call func %s",called_func->name);
            int index = temp - module->import_num;
            log(emit,"real index %d",index);
            emit_2_CALL(jump_vector_start_addr+2*(index));
            // emit_2_CALL(called_func->compiled);
        }
        break;
    case End_:
        log(emit,"[END]");
        if(is_entry_func(module,func)){//在入口函数的尾部恢复状态
            // log(emit,"pop for call restore");
            // emit_x_call_restore();
        }
        // 如果函数有局部变量，则恢复Y指针
        if(func->numLocals){
            // emit_restore_Y();
            log(emit,"deinit %dB locals",func->numLocalBytes);
            emit_local_deinit(func->numLocalBytes);
        }

        log(emit, "ret");
        emit_RET();
        break;
    case I32Const:
        ReadLEB_u32(&temp,start,end);
        log(emit,"[I32.CONST %d]",temp);
        log(emit, "load %d to R22.",temp);
        emit_LDI(R22,(u8)temp);
        emit_LDI(R23,(u8)temp>>8);
        emit_LDI(R24,(u8)temp>>16);
        emit_LDI(R25,(u8)temp>>24);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case I32Add:
        log(emit,"[I32.ADD]");
        log(emit, "pop32 to R22.");
        emit_x_POP_32bit(R22);
        log(emit, "pop32 to R18.");
        emit_x_POP_32bit(R18);
        log(emit, "add32 R22. = R22. + R18.");
        emit_ADD(R22,R18);
        emit_ADC(R23,R19);
        emit_ADC(R24,R20);
        emit_ADC(R25,R21);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case I32And:
        log(emit,"[I32.AND]");
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
        log(emit,"[LOCAL.GET %d]",temp);
        log(emit,"Load R22... from local[%d]",temp*4);
        base = temp*4;
        emit_LDD(R22,Y,base+1);
        emit_LDD(R23,Y,base+2);
        emit_LDD(R24,Y,base+3);
        emit_LDD(R25,Y,base+4);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case LocalSet:
        //读取局部变量索引
        ReadLEB_u32(&temp,start,end);
        log(emit,"[LOCAL.SET %d]",temp);
        log(emit, "pop32 to R22...");
        emit_x_POP_32bit(R22);
        log(emit, "Store R22... to local[%d]",temp*4);
        base = temp*4;
        emit_STD(R22,Y,base+1);
        emit_STD(R23,Y,base+2);
        emit_STD(R24,Y,base+3);
        emit_STD(R25,Y,base+4);
        break;
    case GlobalGet:
        //读取全局变量索引
        ReadLEB_u32(&temp,start,end);
        log(emit,"[GLOBAL.GET %d]",temp);
        log(emit,"Load R22. from global[%d]",module->global_list[temp].offset);
        emit_LDD(R22,Z,module->global_list[temp].offset);
        emit_LDD(R23,Z,module->global_list[temp].offset+1);
        emit_LDD(R24,Z,module->global_list[temp].offset+2);
        emit_LDD(R25,Z,module->global_list[temp].offset+3);
        log(emit, "push32");
        emit_x_PUSH_32bit(R22);
        break;
    case GlobalSet:
        ReadLEB_u32(&temp,start,end);
        log(emit,"[GLOBAL.SET %d]",temp);
        log(emit, "pop32 to R22.");
        emit_x_POP_32bit(R22);
        log(emit, "Store R22. to global[%d]",module->global_list[temp].offset);
        emit_STD(R22,Z,module->global_list[temp].offset);
        emit_STD(R23,Z,module->global_list[temp].offset+1);
        emit_STD(R24,Z,module->global_list[temp].offset+2);
        emit_STD(R25,Z,module->global_list[temp].offset+3);
        break;

    default:
        panicf("unsupported instructions: %02X ", op);
        break;
    }
}