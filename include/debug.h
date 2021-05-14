#include<stdio.h>
#define DEBUG 1
#define d_log_parse 1

#define DEBUG 1
#if DEBUG

    #define d_Log(CATEGORY, FMT, ...)                  printf (" %8s  |  " FMT, #CATEGORY, ##__VA_ARGS__);

    #if d_log_parse
        #define log_parse(CATEGORY, FMT, ...)          d_Log(CATEGORY, FMT, ##__VA_ARGS__)
    #else
        #define log_parse(...) {}
    #endif


    #define log(CATEGORY, FMT, ...)                    log_##CATEGORY (CATEGORY, FMT "\r\n", ##__VA_ARGS__)
    #define logif(CATEGORY, STATEMENT)                 do{log_##CATEGORY (CATEGORY, ""); if (d_log_##CATEGORY) { STATEMENT; printf ("\r\n"); }}while(0)
#else
    #define log(CATEGORY, FMT, ...)                    {}
    #define logif(CATEGORY, STATEMENT)                 {}
# endif

#define panicf(FMT,...)  do{printf("ERROR! "FMT ":%s :%d\r\n",##__VA_ARGS__,__FILE__,__LINE__);while(1);}while(0)
#define panic()  do{printf("ERROR! at %s :%d\r\n",__FILE__,__LINE__);while(1);}while(0)

