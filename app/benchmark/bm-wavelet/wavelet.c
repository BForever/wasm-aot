
// #include "stdafx.h"
#include "wavelet.h"  

#include <stdio.h>   
#include <stdlib.h>   
#include <math.h>   
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

