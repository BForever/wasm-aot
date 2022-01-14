#pragma once

#define LENGTH 32//信号长度 
#define STEP 5

void DWT1D(float input[], float output[], float temp[], float Lo_D[],
	float Hi_D[], int sigLen, int m, int nStep, float c[STEP+1][LENGTH]);
	
