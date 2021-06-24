#include "types.h"
#include "debug.h"
#include "compile.h"

extern translation_state ts;
void printInt(i32 res)
{
    // printf("hello, world!\r\n");
    printf("res: %d\r\n",res);
}
u32 getA(){
    return 22;
}
u32 getB(){
    return 33;
}

u32 shift(u32 input, u32 move){
    return input != move;
}

void rtc_startBenchmarkMeasurement_Native(){
    printf("benchmark start.\r\n");
}
void rtc_stopBenchmarkMeasurement(){
    printf("benchmark stop.\r\n");
}
u32 malloc_record = 4;
u32 import_malloc(u32 size){
    u32 res = malloc_record;
    malloc_record +=size;
    return res;
}

u32 import_memset(u32 s,u32 ch,u32 n){
    for(int i=0;i<n;i++){
        *(ts.wasm_mem_space+s) = (u8)ch;
    }
    return s;
}

u32 test(u32 input1,u32 input2,u32 input3){
    return input3==0?input2:input1;
}


#define IMPORTS_NUM 7
normal_function imports[IMPORTS_NUM]={
    printInt,
    getA,
    getB,
    rtc_startBenchmarkMeasurement_Native,
    rtc_stopBenchmarkMeasurement,
    import_malloc,
    import_memset,
    test};
char* imports_name[IMPORTS_NUM]={
    "printInt",
    "getA",
    "getB",
    "rtc_startBenchmarkMeasurement_Native",
    "rtc_stopBenchmarkMeasurement",
    "malloc",
    "memset",
    };
u32 imports_num=IMPORTS_NUM;
