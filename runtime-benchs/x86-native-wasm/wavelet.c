
// #include "stdafx.h"

#include <stdio.h>   
#include <stdlib.h>   
#include <math.h>   
#include "measure.h"

#pragma once

#define LENGTH 2//信号长度 
#define STEP 1

void DWT1D(float input[], float output[], float temp[], float Lo_D[],
	float Hi_D[], int sigLen, int m, int nStep, float c[STEP+1][LENGTH]);
	

/*****************************************************************
*　一维卷积函数
*
*　说明:
*  循环卷积,卷积结果的长度与输入信号的长度相同
*
*　输入参数:
*  data[],输入信号;
*  Lo_D[],Daubechies小波基低通滤波器系数;
*  Hi_D[],Daubechies小波基高通滤波器系数;
*  cov[],卷积结果;
*  n,输入信号长度;
*  m,卷积核长度.

*****************************************************************/
void Covlution(float data[], float Lo_D[], float Hi_D[], float cov[], int sigLen, int waveletBasisLen)
//					  output[]		 Lo_D[]		 Hi_D[]		 temp[]		sigLen	   m
{
	int i = 0, j = 0, k = 0;

	for (i = 0; i < sigLen; i++)			//将cov[]清零   
		cov[i] = 0;

	//****************************************************   
	//奇数行用Lo_D[]进行卷积   
	//****************************************************   
	//前m/2+1行   
	i = 0;
	for (j = 0; j < waveletBasisLen / 2; j += 2, i += 2)
	{
		for (k = waveletBasisLen / 2 - j; k < waveletBasisLen; k++)
			cov[i] += data[k - (waveletBasisLen / 2 - j)] * Lo_D[k];//k针对core[k]   

		for (k = sigLen - waveletBasisLen / 2 + j; k < sigLen; k++)
			cov[i] += data[k] * Lo_D[k - (sigLen - waveletBasisLen / 2 + j)];//k针对data[k]   
	}

	//中间的n-m行   
	for (; i <= (sigLen - waveletBasisLen) + waveletBasisLen / 2; i += 2)
	{
		for (j = 0; j < waveletBasisLen; j++)
			cov[i] += data[i - waveletBasisLen / 2 + j] * Lo_D[j];
	}

	//最后m/2-1行    
	for (j = 1; j <= waveletBasisLen / 2; j += 2, i += 2)
	{
		for (k = 0; k < j; k++)
			cov[i] += data[k] * Lo_D[waveletBasisLen - j - k];//k针对data[k]   

		for (k = 0; k < waveletBasisLen - j; k++)
			cov[i] += Lo_D[k] * data[sigLen - (waveletBasisLen - j) + k];//k针对core[k]   
	}

	//****************************************************   
	//偶数行用Hi_D[]进行卷积   
	//****************************************************   
	//前m/2+1行   
	i = 1;
	for (j = 0; j < waveletBasisLen / 2; j += 2, i += 2)
	{
		for (k = waveletBasisLen / 2 - j; k < waveletBasisLen; k++)
			cov[i] += data[k - (waveletBasisLen / 2 - j)] * Hi_D[k];//k针对core[k]   

		for (k = sigLen - waveletBasisLen / 2 + j; k < sigLen; k++)
			cov[i] += data[k] * Hi_D[k - (sigLen - waveletBasisLen / 2 + j)];//k针对data[k]   
	}

	//中间的n-m行   
	for (; i <= (sigLen - waveletBasisLen) + waveletBasisLen / 2; i += 2)
	{
		for (j = 0; j < waveletBasisLen; j++)
			cov[i] += data[i - waveletBasisLen / 2 + j] * Hi_D[j];
	}

	//最后m/2-1行   
	for (j = 1; j <= waveletBasisLen / 2; j += 2, i += 2)
	{
		for (k = 0; k < j; k++)
			cov[i] += data[k] * Hi_D[waveletBasisLen - j - k];//k针对data[k]   

		for (k = 0; k < waveletBasisLen - j; k++)
			cov[i] += Hi_D[k] * data[sigLen - (waveletBasisLen - j) + k];//k针对core[k]   
	}
}

/*****************************************************************
*   排序函数
*
*   将卷积后的结果进行排序，使尺度系数和小波系数分开
*****************************************************************/
void Sort(float data[], float sort[], int sigLen)
{
	for (int i = 0; i < sigLen; i += 2)
		sort[i / 2] = data[i];

	for (int i = 1; i < sigLen; i += 2)
		sort[sigLen / 2 + i / 2] = data[i];
}

/*****************************************************************
*　一维小波变换函数
*
*　说明:
*  一维小波变换,可进行多次分解,将每层的分解结果存入c[][]中
*
*　输入参数:
*  % input[],输入信号;
*  % output[],小波变换结果，包括尺度系数和小波系数两部分;
*  % temp[],存放中间结果;
*  % Lo_D[],Daubechies小波基低通滤波器系数;
*  % Hi_D[],Daubechies小波基高通滤波器系数;
*  % n,输入信号长度;
*  % m,Daubechies小波基紧支集长度;
*  % nStep,小波变换分解次数
*
*　李承宇, lichengyu2345@126.com
*
*  2010-08-22
*****************************************************************/
void DWT1D(float input[], float output[], float temp[], float Lo_D[],
	float Hi_D[], int sigLen, int waveletBasisLen, int nStep, float c[8][LENGTH])
{
	int i = 0, k = 0;

	for (i = 0; i < sigLen; i++)
		output[i] = input[i];						//初始化

	for (i = 0; i < nStep; i++)						//进行nStep层分解
	{
		Covlution(output, Lo_D, Hi_D, temp, sigLen, waveletBasisLen);		//卷积结果存放在temp[]中
		Sort(temp, output, sigLen); 						//使尺度系数和小波系数分开  	temp --> output

		for (k = 0; k < LENGTH / pow(2, i); k++)	//将每层的结构都存储到c[][]中
		{
			c[i][k] = output[k];
		}
		sigLen = sigLen / 2;									//每次分解后，信号长度减半
	}
}

void rtcbench_wavelet()
{
    // float data[LENGTH] = { 2, 4, 5, 6, 4, 6, 8, 7, 9, 7, 5, 10, 10, 11, 12, 15,
    //                       16,16,18,19,20,21,26,27,29,30,34, 36, 38, 41, 43, 48,
    //                       55,60,54,53,47,44,42,41,39,36,35, 28, 27, 26, 22, 22,
    //                       16,14,11,11,10, 9, 8, 7, 7, 6, 6,  5,  6,  4,  5,  4 };		//输入信号   

    float data[LENGTH] = { 0 };		//输入信号  

	float temp[LENGTH] = { 0 };		//中间结果   
	float data_output[LENGTH] = { 0 };	//一维小波变换后的结果   
	volatile float c[STEP+1][LENGTH] = { 0 };		//各层的近似(前半段)与细节(后半段)
	// float a[3][LENGTH] = { 0 };		//各层的近似系数，第i行表示第i层分解的近似	Approximate
	// float d[3][LENGTH] = { 0 };		//各层的细节系数，第i行表示第i层分解的细节	Detail
	int sigLen = LENGTH;					//输入信号长度   
	int waveletBasisLen = 6;					//Daubechies正交小波基长度   
	int nStep = STEP;				//分解层数   

	/* matlab产生的 db3小波  */
	float Lo_D[] = { 0.0352262918821007, -0.0854412738822415, -0.135011020010391, 0.459877502119331 , 0.806891509313339 , 0.332670552950957 };
	float Hi_D[] = { -0.332670552950957 ,  0.806891509313339 , -0.459877502119331, -0.135011020010391, 0.0854412738822415, 0.0352262918821007 };
	/* matlab产生的 db3小波  */
//	float Lo_D[] = {  0.00333572528500155, -0.0125807519990155, -0.00624149021301171, 0.0775714938400652, -0.0322448695850295, -0.242294887066190 ,  0.138428145901103 ,  0.724308528438574  , 0.603829269797473 , 0.160102397974125   };
//	float Hi_D[] = { -0.160102397974125  ,  0.603829269797473 , -0.724308528438574  , 0.138428145901103 ,  0.242294887066190 , -0.0322448695850295, -0.0775714938400652, -0.00624149021301171, 0.0125807519990155, 0.00333572528500155 };
	//matlab计算系数函数：[Lo_D,Hi_D,Lo_R,Hi_R] = wfilters('db1');

	waveletBasisLen = sizeof(Lo_D) / sizeof(float);

    int a=3;
    printf("float size=%d",sizeof(float));

    rtc_startBenchmarkMeasurement_Native();
	//一维小波变换   
	DWT1D(data, data_output, temp, Lo_D, Hi_D, sigLen, waveletBasisLen, nStep, c);
    rtc_stopBenchmarkMeasurement();

}

