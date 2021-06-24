#include "benchmark.h"
#include "AvroraPrint.h"
#include <stdarg.h>
#include <stdio.h>
void avr_Print(char * str)
{
	int i;
	for (i=0; str[i]!=0; i++) {
		if (str[i] == '\n') {
			avroraPrintCharBuffer();
		} else {
			avroraWriteCharBuffer(str[i]);
		}
	}
}

void avr_VPrint(char * format, va_list arg)
{
	static char temp[128];
	vsnprintf(temp, 128, format, arg);
	avr_Print(temp);
}

void avr_Printf(char * format, ...)
{
	va_list arg;

	va_start(arg, format);
	avr_VPrint(format, arg);
	va_end(arg);
}


// extern void* malloc(uint16_t size);
void rtc_startBenchmarkMeasurement_Native(){
    // avr_Print("start");
    avroraWriteCharBuffer('b');
    avroraWriteCharBuffer('e');
    avroraWriteCharBuffer('n');
    avroraWriteCharBuffer('c');
    avroraWriteCharBuffer('h');
    avroraWriteCharBuffer('s');
    avroraWriteCharBuffer('t');
    avroraWriteCharBuffer('a');
    avroraWriteCharBuffer('r');
    avroraWriteCharBuffer('t');
    avroraPrintCharBuffer();
}
void rtc_stopBenchmarkMeasurement(){
    // avr_Print("stop");
    avroraWriteCharBuffer('b');
    avroraWriteCharBuffer('e');
    avroraWriteCharBuffer('n');
    avroraWriteCharBuffer('c');
    avroraWriteCharBuffer('h');
    avroraWriteCharBuffer('s');
    avroraWriteCharBuffer('t');
    avroraWriteCharBuffer('o');
    avroraWriteCharBuffer('p');
    avroraPrintCharBuffer();
}

void printInt(uint32_t value){
    avr_Printf("res: %ld\r\n",value);
}
void PrintInt32(uint32_t value){
    avroraPrintInt32(value);
}
void PrintInt16(uint16_t value){
    avroraPrintInt16(value);
}
void PrintStr(uint8_t* str){
    avroraPrintStr(str);
}

int main(){
    javax_rtcbench_RTCBenchmark_void_test_native();
    asm volatile ("break");
}
