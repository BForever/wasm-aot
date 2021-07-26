#include "types.h"
#include "debug.h"
#include "compile.h"
#include "AvroraTrace.h"
extern translation_state ts;
i32 printInt(i32 res)
{
    // printf("hello, world!\r\n");
    printf("res: %ld\n",res);
    return res;
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
    // printf("benchmark start.\r\n");
    avroraTraceEnable();
}
void rtc_stopBenchmarkMeasurement(){
    // printf("benchmark stop.\r\n");
    avroraTraceDisable();
}
u32  __attribute__((section (".wait"))) malloc_record = 0;
u32 import_malloc(u32 size){
    u32 res = malloc_record;
    malloc_record +=size;
    printf("malloc from %d to %d\n",(u16)res,(u16)(malloc_record));
    return res;
}

u32 import_memset(u32 s,u32 ch,u32 n){
    for(int i=0;i<n;i++){
        *(char*)(ts.wasm_mem_space+ts.wasm_globals_size+(u16)s+i) = (u8)ch;
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
    };
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
