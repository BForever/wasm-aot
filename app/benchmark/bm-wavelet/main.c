
// #include "stdafx.h"
#include <stdio.h>   
#include <stdlib.h>   
#include <math.h>   
#include "wavelet.h" 

void javax_rtcbench_RTCBenchmark_void_test_native()
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
    printStr("float size=");printInt(sizeof(float));

    rtc_startBenchmarkMeasurement_Native();
	//一维小波变换   
	DWT1D(data, data_output, temp, Lo_D, Hi_D, sigLen, waveletBasisLen, nStep, c);
    rtc_stopBenchmarkMeasurement();
	// for (int i = 0; i < nStep; i++)		//将各层变换的结果写入txt文件 
	// {   
    //     printStr("------");
    //     printStr("i=");
    //     printInt(i);
    //     printStr("---");
        
    //     // avr_Printf( "i= %d\n", i);	
	// 	// fp = fopen(pFilePath[i], "w");
	// 	for (int j = 0; j < sigLen / pow(2, i); j++)			//pow(a,b)：是a的b次方
	// 	{
    //         printStr("j=");
    //         printInt(j);
    //         printStr("-");
    //         printInt(c[i][j]);
    //         avr_Printf( "j= %d\n", j);	
	// 		avr_Printf( "%f\n", c[i][j]);			//fprintf格式化输入到文件
	// 	}
    // }
    
		// fclose(fp);

	// 	//将近似、细节分量分开存储
	// 	int l = LENGTH / pow(2, i);
	// 	for (int k = 0; k < l / 2; k++)
	// 		a[i][k] = c[i][k];

	// 	for (int k = l / 2; k <l; k++)
	// 		d[i][k - l / 2] = c[i][k];
	// }
}

