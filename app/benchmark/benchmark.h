#ifndef BENCHMARK_H
#define BENCHMARK_H
#define NULL 0
#ifndef AVRORA
typedef unsigned char       uint8_t;
typedef signed char         int8_t;
typedef unsigned short      uint16_t;
typedef short               int16_t;
typedef unsigned long       uint32_t;
typedef long                int32_t;
typedef unsigned long long  uint64_t;
typedef long long           int64_t;
typedef uint32_t            bool;
#define true                1
#define false               0
#else
#include <stdint.h>
#include <stdbool.h>
#endif


extern void* malloc(uint32_t size);
extern void *memset(void *s, int c, uint32_t n);
extern void *memcpy(void *d, void *s, uint32_t n);
extern void rtc_startBenchmarkMeasurement_Native();
extern void rtc_stopBenchmarkMeasurement();
#ifdef AVRORA

#define printInt16 avroraPrintInt
#define printInt32 avroraPrintInt
#define printInt avroraPrintInt
#define printStr PrintStr
#include<AvroraPrint.h>

#else
extern void printInt(uint32_t value);
extern void PrintStr(uint8_t* str);

#define printInt32 printInt
#define printInt16 printInt


#endif

#endif