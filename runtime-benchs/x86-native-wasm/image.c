#include "measure.h"
#define W 80
#define H 80

// static volatile unsigned char result[W*H];
void rtcbench_image()
{

    unsigned char R[2]={2,1};
    unsigned char G[2]={2,1};
    unsigned char B[2]={2,1};

    volatile unsigned char result;

    rtc_startBenchmarkMeasurement_Native();
    
    for(int i=0;i<H;i++){
        for(int j=0;j<W;j++){
            unsigned short index = (i*W+j)%2;
            // unsigned char index = j%2;
            result = 3*R[index]/10 + 59*G[index]/100 + 11*B[index]/100;
            // result = 30*R[index] + 59*G[index] + 11*B[index];
        }
    }

    rtc_stopBenchmarkMeasurement();
}