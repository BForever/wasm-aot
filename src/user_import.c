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
normal_function imports[4]={printInt,getA,getB,shift};
char* imports_name[3]={"printInt","getA","getB"};
u32 imports_num=3;
