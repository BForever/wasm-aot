#include "debug.h"
#ifdef AVRORA
#include<AvroraPrint.h>
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
#endif