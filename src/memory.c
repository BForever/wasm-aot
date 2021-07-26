#include "compile.h"
#include "memory.h"
#include "debug.h"
#include "safety_check.h"
#include <avr/pgmspace.h>


mem_area  __attribute__((section (".wait"))) mem_areas[WASM_MEM_AREA_NUM]={{0,0,0,0},{0,0,0,0},{0,4096,0,0}};
// __attribute__((section (".wait")))
u32 embed_i32load(u16 offset1,u32 addr){
    u16 target = addr+offset1;
    u32 res;
    u8 overflow=1;
    // printf("r%d\r\n",target);
    for(int i=0;i<WASM_MEM_AREA_NUM;i++){
        if(target>=mem_areas[i].start&&target<mem_areas[i].end){
            if(mem_areas[i].flash){
                res = pgm_read_dword_near((u8*)(mem_areas[i].target+target-mem_areas[i].start));
            }else{
                // printf("r %p\r\n",(u8*)mem_areas[i].target+target-mem_areas[i].start);
                res = *(u32*)((u8*)mem_areas[i].target+target-mem_areas[i].start);
            }
            overflow=0;
            break;
        }
    }
    if(overflow){
        printf("read out of bound! at %d\n",target);
        asm volatile("break");
    }
    return res;
}
u64 embed_i64load(u16 offset1,u32 addr){
    u16 target = addr+offset1;
    union 
    {
        u32 n32[2];
        u64 n64;
    }res;
    
    u8 overflow=1;
    // printf("r%d\r\n",target);
    for(int i=0;i<WASM_MEM_AREA_NUM;i++){
        if(target>=mem_areas[i].start&&target<mem_areas[i].end){
            if(mem_areas[i].flash){
                res.n32[0] = pgm_read_dword_near((u8*)(mem_areas[i].target+target-mem_areas[i].start));
                res.n32[1] = pgm_read_dword_near((u8*)(mem_areas[i].target+target-mem_areas[i].start+4));
            }else{
                // printf("r %p\r\n",(u8*)mem_areas[i].target+target-mem_areas[i].start);
                res.n32[0] = *(u32*)((u8*)mem_areas[i].target+target-mem_areas[i].start);
                res.n32[1] = *(u32*)((u8*)mem_areas[i].target+target-mem_areas[i].start+4);
            }
            overflow=0;
            break;
        }
    }
    if(overflow){
        printf("read out of bound! at %d\n",target);
        asm volatile("break");
    }
    return res.n64;
}

void embed_i32store(u32 value,u16 offset1,u16 addr){

    u16 target = addr+offset1;
    printf("w%p\r\n",target);
    u8 overflow=1;
    for(int i=0;i<WASM_MEM_AREA_NUM;i++){
        if(target>=mem_areas[i].start&&target<mem_areas[i].end){
            if(mem_areas[i].flash){
                break;
            }else{
                *(u32*)((u8*)mem_areas[i].target+target-mem_areas[i].start)=value;
                overflow=0;
                break;
            }
        }
    }
    if(overflow){
        printf("write out of bound! at \n");
        asm volatile("break");
    }
}


void empty_function(){
}
u16 func_type_map[5] = {0,1,2,3,4};
u16 pseudo_table[10]={0,1,2,3,4,5,6,7,8,9};
u16 table_length =2;
u32 table_address;
void icall(u32 index){
    normal_function func = pgm_read_word(table_address+2*index);

#if check_icall_type
    if(func_type_map[pseudo_table[index]]!=0){
        asm volatile("break");
    }
#endif 
#if check_icall_bound
    if(index>=table_length){
        asm volatile("break");
    }
#endif
    func();    
}