#include <stdlib.h>
#include <string.h>

typedef unsigned int u32;
typedef int i32;
typedef char i8;
typedef unsigned char u8;

extern void printInt(u32 num);
extern void print(u8* str,u32 len);
extern void delay(u32 ms);
extern u32 now();
extern u32 get_argc();

int main()
{
    char *str = malloc(10);
    memcpy(str, "hello", 6);
    print(str,6);
}
