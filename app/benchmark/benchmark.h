#ifndef BENCHMARK_H
#define BENCHMARK_H

typedef unsigned char       uint8_t;
typedef char                int8_t;
typedef unsigned short      uint16_t;
typedef short               int16_t;
typedef unsigned long       uint32_t;
typedef long                int32_t;
typedef unsigned long long  uint64_t;
typedef long long           int64_t;

extern void* malloc(uint16_t size);
extern void rtc_startBenchmarkMeasurement_Native();
extern void rtc_stopBenchmarkMeasurement();

void printInt(uint32_t value);
void PrintInt32(uint32_t value);
void PrintStr(uint8_t* str);
#endif