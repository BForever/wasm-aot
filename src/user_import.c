#include "types.h"
#include "debug.h"
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
u32 import_malloc(u32 size){
    return 0;
}

u32 test(u32 input1,u32 input2,u32 input3){
    return input3==0?input2:input1;
}



normal_function imports[7]={printInt,getA,getB,rtc_startBenchmarkMeasurement_Native,rtc_stopBenchmarkMeasurement,import_malloc,test};
char* imports_name[6]={"printInt","getA","getB","rtc_startBenchmarkMeasurement_Native","rtc_stopBenchmarkMeasurement","malloc"};
u32 imports_num=6;
