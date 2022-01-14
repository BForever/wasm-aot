#include "measure.h"
#include <stdio.h>
#include <stdlib.h>
void ComputePi(int numdigits, char* pi)
{
    int alength = 10 * numdigits / 3;
    int* a = (int*) malloc(alength * sizeof(int));
    int piLength = 0;
    int nines = 0;
    int predigit = 0;
    int i, j;
    for(i = 0; i < alength; ++i)
        a[i] = 2;

    for (j = 0; j < numdigits; ++j)
    {
        int q = 0;
        int p = 2 * alength - 1;
        for (i = alength; --i >= 0; )
        {
            int x = 10*a[i] + q*(i+1);
            a[i] = x % p;
            q = x / p;
            p -= 2;
        }

        a[0] = q % 10;
        q /= 10;
        if (q == 9)
            ++nines;
        else if (q == 10)
        {
            int k;
            pi[piLength] = (char) (predigit + 1 + '0');
            for (k = 1; k <= nines; ++k)
                pi[piLength+k] = '0';
            piLength += nines + 1;
            predigit = 0;
            nines = 0;
        }
        else
        {
            int k;
            pi[piLength] = (char)(predigit + '0');
            predigit = q;
            for (k = 1; k <= nines; ++k)
                pi[piLength + k] = '9';
            piLength += nines + 1;
            nines = 0;
        }
    }
    pi[piLength] = (char)(predigit + '0');
    pi[piLength+1] = '\0';
}

void rtcbench_pi()
{
    int numdigits = 40;
    char* pi;

    pi = (char*) malloc(numdigits+1);

    rtc_startBenchmarkMeasurement_Native();
    ComputePi(numdigits, pi);
    rtc_stopBenchmarkMeasurement();
    printf("%s\n",pi);
}
