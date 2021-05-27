#include "types.h"
#include "debug.h"
void printInt(u32 res)
{
    // printf("hello, world!\r\n");
    printf("result: %d\r\n",res);
}
u32 getA(){
    return 22;
}
u32 getB(){
    return 33;
}
void printF32(f32 res)
{
    printf("length of types: float: %d, double: %d\r\n", sizeof(float), sizeof(double));
    printf("result: %f\r\n",res);
}
f32 getF32A(){
    return 1.1;
}
f32 getF32B(){
    return 2.2;
}
normal_function imports[6]={printInt, getA, getB, printF32, getF32A, getF32B};
char* imports_name[6]={"printInt", "getA", "getB", "printF32", "getF32A", "getF32B"};
u32 imports_num=6;