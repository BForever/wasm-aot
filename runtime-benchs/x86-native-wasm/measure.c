#include <stdio.h>
#include <sys/time.h>
struct timeval start,end;
    
void rtc_startBenchmarkMeasurement_Native(){
    gettimeofday(&start, NULL );
}
void rtc_stopBenchmarkMeasurement(){
    gettimeofday(&end, NULL );
    long timeuse =1000000 * ( end.tv_sec - start.tv_sec ) + end.tv_usec - start.tv_usec;
    // printf("delay test start: %ld:%ld\n",start.tv_sec,start.tv_usec);
    // printf("stop: %ld:%ld\n",end.tv_sec,end.tv_usec);
    // printf("delta: %.4f ms\n\n",timeuse /1000.0);
    printf("%.4f\n",timeuse /1000.0);
}