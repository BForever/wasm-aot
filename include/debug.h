#ifndef DEBUG_H
#define DEBUG_H

#include<stdio.h>
#define DEBUG 1
#define d_log_parse 1
#define d_log_compile 1
#define d_log_wkreprog 1

#ifdef AVRORA
    void avr_Printf(char * format, ...);
    #define printf    avr_Printf
#endif

#if DEBUG

    #define d_Log(CATEGORY, FMT, ...)                  printf (" %8s  |  " FMT, #CATEGORY, ##__VA_ARGS__)
   
    #if d_log_parse
        #define log_parse(CATEGORY, FMT, ...)          d_Log(CATEGORY, FMT, ##__VA_ARGS__)
    #else
        #define log_parse(...) {}
    #endif

    #if d_log_wkreprog
        #define log_wkreprog(CATEGORY, FMT, ...)          d_Log(CATEGORY, FMT, ##__VA_ARGS__)
    #else
        #define log_wkreprog(...) {}
    #endif

    #if d_log_compile
        #define log_compile(CATEGORY, FMT, ...)          d_Log(CATEGORY, FMT, ##__VA_ARGS__)
    #else
        #define log_compile(...) {}
    #endif


    #define log(CATEGORY, FMT, ...)                    log_##CATEGORY (CATEGORY, FMT "\r\n", ##__VA_ARGS__)
    #define logif(CATEGORY, STATEMENT)                 do{log_##CATEGORY (CATEGORY, ""); if (d_log_##CATEGORY) { STATEMENT; printf ("\r\n"); }}while(0)
#else
    #define log(CATEGORY, FMT, ...)                    {}
    #define logif(CATEGORY, STATEMENT)                 {}
# endif

#define panicf(FMT,...)  do{printf("ERROR! "FMT ":%s :%d\r\n",##__VA_ARGS__,__FILE__,__LINE__);while(1);}while(0)
#define panic()  do{printf("ERROR! at %s :%d\r\n",__FILE__,__LINE__);while(1);}while(0)





#endif //DEBUG_H
