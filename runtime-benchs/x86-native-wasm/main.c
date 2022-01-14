#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>

typedef struct
{
    char* name;
    void (*func)();
}bench;

void rtcbench_binsrch();
void rtcbench_bsort();
void rtcbench_fillarray();
void rtcbench_hsort();
void rtcbench_pi();
void rtcbench_fft();
void rtcbench_outlier();
void rtcbench_heatcalib();
void rtcbench_heatdetect();
void rtcbench_wavelet();
void rtcbench_image();

static bench bench_list[]={
    {"binsrch",rtcbench_binsrch},
    // {"bsort",rtcbench_bsort},
    // {"fillarray",rtcbench_fillarray},
    // {"hsort",rtcbench_hsort},
    // {"pi",rtcbench_pi},
    {"fft",rtcbench_fft},
    {"outlier",rtcbench_outlier},
    {"heatcalib",rtcbench_heatcalib},
    {"heatdetect",rtcbench_heatdetect},
    // {"wavelet",rtcbench_wavelet},
    // {"image",rtcbench_image}
};

int main(int argc,char* argv[])
{
    // struct timeval start,end;
    // gettimeofday(&start, NULL );
    
    // struct timespec a;
    // a.tv_sec  = 0;
    // a.tv_nsec = 1000000;
    // int rc = nanosleep( &a, NULL );
    // sleep(1);

    // gettimeofday(&end, NULL );

    // long timeuse =1000000 * ( end.tv_sec - start.tv_sec ) + end.tv_usec - start.tv_usec;
    // printf("delay test start: %ld:%ld\n",start.tv_sec,start.tv_usec);
    // printf("stop: %ld:%ld\n",end.tv_sec,end.tv_usec);
    // printf("delta: %f\n\n",timeuse /1000000.0);

    for(int i=0;i<sizeof(bench_list)/sizeof(bench);i++){
        printf("benchmark %s:\n",bench_list[i].name);
        for(int j=0;j<20;j++)
            bench_list[i].func();
    }
}