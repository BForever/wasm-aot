#include "types.h"
#include "debug.h"
void printInt(u32 res)
{
    // printf("hello, world!\r\n");
    printf("res: %ld\r\n",res);
}
u32 getA(){
    return 22;
}
u32 getB(){
    return 33;
}

normal_function imports[3]={printInt,getA,getB};
char* imports_name[3]={"printInt","getA","getB"};
u32 imports_num=3;
