#include "compile.h"

bool is_imported(wasm_function_ptr func){
    if(func->import.moduleUtf8==NULL&&func->import.fieldUtf8==NULL){
        return true;
    }
    return false;
}
void wasm_compile_function(wasm_module_ptr module,wasm_function_ptr func){
    
}
void wasm_compile_module(wasm_module_ptr module){
    wasm_function_ptr func;
    for(int i=0;i<module->function_num;i++){
        func = module->function_list[0];
                if(is_imported(func)){
            continue;//TODO 链接外部函数
        }else{
            wasm_compile_function(module,func);
        }
    }
}

