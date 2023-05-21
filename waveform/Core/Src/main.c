/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dac.h"
#include "dma.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "arm_math.h"
#include "dsp/interpolation_functions.h"
#include "cJSON.h"
#include "stdlib.h"
#include "string.h"
#include <stdio.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define N_INPUT_SAMPLES 37
#define N_OUTPUT_SAMPLES 243
#define SAMPLE_RATE N_OUTPUT_SAMPLES
#define max_freq 50000.0

#define RX_BUFFER_SIZE 256 // Set buffer size to an appropriate value

//define types for the waveform
#define STOP    0
#define RUN     1

#define DC      0
#define SIN     1
#define TRI     2
#define SAW     3
#define SQUARE  4

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
uint8_t RxBuffer[RX_BUFFER_SIZE]; // Create receive buffer
uint16_t RxIndex = 0; // Create buffer index
uint8_t RxData;

uint16_t Vstate = STOP;
uint16_t Vtype = DC;
uint16_t Vampli = 0;
uint32_t Vfreq = 0;
int Voffset = 0;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

/* USER CODE BEGIN PFP */
void json_transmit(char* command, char* state, char* waveType, uint32_t actualSignalFreq, uint16_t actualVpp, uint16_t actualVOffset);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle);
void process_message(char* message);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */


//uint32_t SinData[]={2048,2073,2099,2125,2150,2176,2202,2227,2253,2279,2304,2330,2355,2380,2406,2431,2456,2482,2507,2532,2557,2582,2606,2631,2656,2680,2705,2729,2753,2777,2801,2825,2849,2872,2896,2919,2942,2966,2988,3011,3034,3056,3079,3101,3123,3145,3166,3188,3209,3230,3251,3272,3292,3313,3333,3353,3372,3392,3411,3430,3449,3468,3486,3504,3522,3540,3558,3575,3592,3609,3625,3641,3657,3673,3689,3704,3719,3734,3748,3762,3776,3790,3803,3816,3829,3842,3854,3866,3878,3889,3900,3911,3921,3932,3942,3951,3961,3970,3978,3987,3995,4003,4010,4017,4024,4031,4037,4043,4048,4054,4059,4063,4068,4072,4075,4079,4082,4085,4087,4089,4091,4092,4094,4094,4095,4095,4095,4094,4094,4092,4091,4089,4087,4085,4082,4079,4075,4072,4068,4063,4059,4054,4048,4043,4037,4031,4024,4017,4010,4003,3995,3987,3978,3970,3961,3951,3942,3932,3921,3911,3900,3889,3878,3866,3854,3842,3829,3816,3803,3790,3776,3762,3748,3734,3719,3704,3689,3673,3657,3641,3625,3609,3592,3575,3558,3540,3522,3504,3486,3468,3449,3430,3411,3392,3372,3353,3333,3313,3292,3272,3251,3230,3209,3188,3166,3145,3123,3101,3079,3056,3034,3011,2988,2966,2942,2919,2896,2872,2849,2825,2801,2777,2753,2729,2705,2680,2656,2631,2606,2582,2557,2532,2507,2482,2456,2431,2406,2380,2355,2330,2304,2279,2253,2227,2202,2176,2150,2125,2099,2073,2048,2022,1996,1970,1945,1919,1893,1868,1842,1816,1791,1765,1740,1715,1689,1664,1639,1613,1588,1563,1538,1513,1489,1464,1439,1415,1390,1366,1342,1318,1294,1270,1246,1223,1199,1176,1153,1129,1107,1084,1061,1039,1016,994,972,950,929,907,886,865,844,823,803,782,762,742,723,703,684,665,646,627,609,591,573,555,537,520,503,486,470,454,438,422,406,391,376,361,347,333,319,305,292,279,266,253,241,229,217,206,195,184,174,163,153,144,134,125,117,108,100,92,85,78,71,64,58,52,47,41,36,32,27,23,20,16,13,10,8,6,4,3,1,1,0,0,0,1,1,3,4,6,8,10,13,16,20,23,27,32,36,41,47,52,58,64,71,78,85,92,100,108,117,125,134,144,153,163,174,184,195,206,217,229,241,253,266,279,292,305,319,333,347,361,376,391,406,422,438,454,470,486,503,520,537,555,573,591,609,627,646,665,684,703,723,742,762,782,803,823,844,865,886,907,929,950,972,994,1016,1039,1061,1084,1107,1129,1153,1176,1199,1223,1246,1270,1294,1318,1342,1366,1390,1415,1439,1464,1489,1513,1538,1563,1588,1613,1639,1664,1689,1715,1740,1765,1791,1816,1842,1868,1893,1919,1945,1970,1996,2022};
uint16_t SinData[N_INPUT_SAMPLES] = {2048,2403,2748,3071,3364,3616,3821,3972,4064,4095};

//uint32_t TriData[]={0,16,33,49,66,82,98,115,131,147,164,180,197,213,229,246,262,278,295,311,328,344,360,377,393,410,426,442,459,475,491,508,524,541,557,573,590,606,622,639,655,672,688,704,721,737,753,770,786,803,819,835,852,868,885,901,917,934,950,966,983,999,1016,1032,1048,1065,1081,1097,1114,1130,1147,1163,1179,1196,1212,1229,1245,1261,1278,1294,1310,1327,1343,1360,1376,1392,1409,1425,1441,1458,1474,1491,1507,1523,1540,1556,1572,1589,1605,1622,1638,1654,1671,1687,1704,1720,1736,1753,1769,1785,1802,1818,1835,1851,1867,1884,1900,1916,1933,1949,1966,1982,1998,2015,2031,2048,2064,2080,2097,2113,2129,2146,2162,2179,2195,2211,2228,2244,2260,2277,2293,2310,2326,2342,2359,2375,2391,2408,2424,2441,2457,2473,2490,2506,2523,2539,2555,2572,2588,2604,2621,2637,2654,2670,2686,2703,2719,2735,2752,2768,2785,2801,2817,2834,2850,2867,2883,2899,2916,2932,2948,2965,2981,2998,3014,3030,3047,3063,3079,3096,3112,3129,3145,3161,3178,3194,3210,3227,3243,3260,3276,3292,3309,3325,3342,3358,3374,3391,3407,3423,3440,3456,3473,3489,3505,3522,3538,3554,3571,3587,3604,3620,3636,3653,3669,3686,3702,3718,3735,3751,3767,3784,3800,3817,3833,3849,3866,3882,3898,3915,3931,3948,3964,3980,3997,4013,4029,4046,4062,4079,4095,4079,4062,4046,4029,4013,3997,3980,3964,3948,3931,3915,3898,3882,3866,3849,3833,3817,3800,3784,3767,3751,3735,3718,3702,3685,3669,3653,3636,3620,3604,3587,3571,3554,3538,3522,3505,3489,3473,3456,3440,3423,3407,3391,3374,3358,3342,3325,3309,3292,3276,3260,3243,3227,3210,3194,3178,3161,3145,3129,3112,3096,3079,3063,3047,3030,3014,2998,2981,2965,2948,2932,2916,2899,2883,2867,2850,2834,2817,2801,2785,2768,2752,2735,2719,2703,2686,2670,2654,2637,2621,2604,2588,2572,2555,2539,2523,2506,2490,2473,2457,2441,2424,2408,2391,2375,2359,2342,2326,2310,2293,2277,2260,2244,2228,2211,2195,2179,2162,2146,2129,2113,2097,2080,2064,2048,2031,2015,1998,1982,1966,1949,1933,1916,1900,1884,1867,1851,1835,1818,1802,1785,1769,1753,1736,1720,1704,1687,1671,1654,1638,1622,1605,1589,1572,1556,1540,1523,1507,1491,1474,1458,1441,1425,1409,1392,1376,1360,1343,1327,1310,1294,1278,1261,1245,1229,1212,1196,1179,1163,1147,1130,1114,1097,1081,1065,1048,1032,1016,999,983,966,950,934,917,901,885,868,852,835,819,803,786,770,753,737,721,704,688,672,655,639,622,606,590,573,557,541,524,508,491,475,459,442,426,409,393,377,360,344,328,311,295,278,262,246,229,213,197,180,164,147,131,115,98,82,66,49,33,16,0};
uint16_t TriData[N_INPUT_SAMPLES] = {0,228,455,682,910,1138,1365,1593,1820,2048};

//uint32_t Sawtooth[]={0,8,16,25,33,41,49,57,66,74,82,90,98,106,115,123,131,139,147,156,164,172,180,188,197,205,213,221,229,238,246,254,262,270,278,287,295,303,311,319,328,336,344,352,360,369,377,385,393,401,410,418,426,434,442,450,459,467,475,483,491,500,508,516,524,532,541,549,557,565,573,581,590,598,606,614,622,631,639,647,655,663,672,680,688,696,704,713,721,729,737,745,753,762,770,778,786,794,803,811,819,827,835,844,852,860,868,876,885,893,901,909,917,925,934,942,950,958,966,975,983,991,999,1007,1016,1024,1032,1040,1048,1057,1065,1073,1081,1089,1097,1106,1114,1122,1130,1138,1147,1155,1163,1171,1179,1188,1196,1204,1212,1220,1229,1237,1245,1253,1261,1269,1278,1286,1294,1302,1310,1319,1327,1335,1343,1351,1360,1368,1376,1384,1392,1400,1409,1417,1425,1433,1441,1450,1458,1466,1474,1482,1491,1499,1507,1515,1523,1532,1540,1548,1556,1564,1572,1581,1589,1597,1605,1613,1622,1630,1638,1646,1654,1663,1671,1679,1687,1695,1704,1712,1720,1728,1736,1744,1753,1761,1769,1777,1785,1794,1802,1810,1818,1826,1835,1843,1851,1859,1867,1876,1884,1892,1900,1908,1916,1925,1933,1941,1949,1957,1966,1974,1982,1990,1998,2007,2015,2023,2031,2039,2048,2056,2064,2072,2080,2088,2097,2105,2113,2121,2129,2138,2146,2154,2162,2170,2179,2187,2195,2203,2211,2219,2228,2236,2244,2252,2260,2269,2277,2285,2293,2301,2310,2318,2326,2334,2342,2351,2359,2367,2375,2383,2391,2400,2408,2416,2424,2432,2441,2449,2457,2465,2473,2482,2490,2498,2506,2514,2523,2531,2539,2547,2555,2563,2572,2580,2588,2596,2604,2613,2621,2629,2637,2645,2654,2662,2670,2678,2686,2695,2703,2711,2719,2727,2735,2744,2752,2760,2768,2776,2785,2793,2801,2809,2817,2826,2834,2842,2850,2858,2867,2875,2883,2891,2899,2907,2916,2924,2932,2940,2948,2957,2965,2973,2981,2989,2998,3006,3014,3022,3030,3038,3047,3055,3063,3071,3079,3088,3096,3104,3112,3120,3129,3137,3145,3153,3161,3170,3178,3186,3194,3202,3210,3219,3227,3235,3243,3251,3260,3268,3276,3284,3292,3301,3309,3317,3325,3333,3342,3350,3358,3366,3374,3382,3391,3399,3407,3415,3423,3432,3440,3448,3456,3464,3473,3481,3489,3497,3505,3514,3522,3530,3538,3546,3554,3563,3571,3579,3587,3595,3604,3612,3620,3628,3636,3645,3653,3661,3669,3677,3686,3694,3702,3710,3718,3726,3735,3743,3751,3759,3767,3776,3784,3792,3800,3808,3817,3825,3833,3841,3849,3857,3866,3874,3882,3890,3898,3907,3915,3923,3931,3939,3948,3956,3964,3972,3980,3989,3997,4005,4013,4021,4029,4038,4046,4054,4062,4070,4079,4087,4095,0};
uint16_t Sawtooth[N_INPUT_SAMPLES] = {0,114,228,341,455,569,683,796,910,1024};


/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_DAC1_Init();
  MX_TIM2_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

   for (int i = 0; i < 9; i++) {
	   SinData[10+i] = SinData[8-i];
   }
   for (int i = 0; i < 18; i++) {
	   SinData[19+i] = 4095 - SinData[i+1];
   }


   for (int i = 0; i < 9; i++) {
 	   TriData[10+i] = TriData[9+i]+228;
   }
   for (int i = 0; i < 18; i++) {
	   TriData[19+i] = TriData[17-i];
   }


   for (int i = 0; i < 27; i++) {
	   Sawtooth[i+10] = Sawtooth[i+9]+114;
   }

   q15_t outputSignal[N_OUTPUT_SAMPLES];
   q15_t offSet[N_OUTPUT_SAMPLES];

   HAL_DAC_Start_DMA(&hdac1, DAC_CHANNEL_1, (uint32_t*)outputSignal, N_OUTPUT_SAMPLES/2, DAC_ALIGN_12B_R);
   HAL_DAC_Start_DMA(&hdac1, DAC_CHANNEL_2, (uint32_t*)offSet, N_OUTPUT_SAMPLES/2, DAC_ALIGN_12B_R);
   HAL_TIM_Base_Start(&htim2);

   // Initialize UART2 and receive buffer
   HAL_UART_Receive_IT(&huart2, &RxData, 1);
   RxIndex = 0;

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  //HAL_UART_Receive (&huart2, UART1_rxBuffer, 1,1000);
	  for (int i = 0; i < N_OUTPUT_SAMPLES; i++)
	  {
	     	  float32_t t = i / (float32_t) SAMPLE_RATE;
	     	  q31_t x = (q31_t) (t * (N_INPUT_SAMPLES - 1) * (1 << 20));
	     	  if (Vstate == STOP)
	     	  {
	     		 outputSignal[i] = 0;
	     		 offSet[i] = 0;
	     	  } else {
	     		  offSet[i] = roundf(Voffset/6700.0*4095.0);
	     		  if (Vtype == DC)
	     		  {
	     			 outputSignal[i] = 112;
	     		  } else if (Vtype == SIN) {
	     			 outputSignal[i] = roundf((arm_linear_interp_q15((const q15_t *)SinData, x, N_INPUT_SAMPLES)/1.32+160)/(5000.0/Vampli));
	     		  } else if (Vtype == TRI) {
	     			 outputSignal[i] = roundf((arm_linear_interp_q15((const q15_t *)TriData, x, N_INPUT_SAMPLES)/1.32+160)/(5000.0/Vampli));
	     		  } else if (Vtype == SAW) {
	     			 outputSignal[i] = roundf((arm_linear_interp_q15((const q15_t *)Sawtooth, x, N_INPUT_SAMPLES)/1.32+160)/(5000.0/Vampli));
	     		  } else if (Vtype == SQUARE) {
	     			  if (i < N_OUTPUT_SAMPLES/2) {
	     				 outputSignal[i] = roundf(3070/(5000.0/Vampli))+190;
	     			  } else {
	     				 outputSignal[i] = 190;
	     			  }
	     		  }
	     	  }
	   }


	   htim2.Init.Period = roundf(13.0*max_freq/Vfreq)-1;
	   // Apply the changes to the TIM2 configuration
	   if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
       {
	   // Error handling
	   }

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 40;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/**
  * @Transmit JSON code to display current state
  * @retval None
  */
void json_transmit(char* command, char* state, char* waveType, uint32_t actualSignalFreq, uint16_t actualVpp, uint16_t actualVOffset)
{
	// Create the JSON object and arrays
	cJSON *root = cJSON_CreateObject();
	cJSON *awg = cJSON_CreateObject();
	cJSON_AddItemToObject(root, "awg", awg);

	cJSON *array1 = cJSON_CreateArray();
	cJSON_AddItemToObject(awg, "1", array1);

	cJSON *command_json = cJSON_CreateString(command);
	cJSON *state_json = cJSON_CreateString(state);
	cJSON *waveType_json = cJSON_CreateString(waveType);
	cJSON *actualSignalFreq_json = cJSON_CreateNumber(actualSignalFreq);
	cJSON *actualVpp_json = cJSON_CreateNumber(actualVpp);
	cJSON *actualVOffset_json = cJSON_CreateNumber(actualVOffset);

	// Add the items to the array
	cJSON *item = cJSON_CreateObject();
	cJSON_AddItemToObject(item, "command", command_json);
	cJSON_AddItemToObject(item, "state", state_json);
	cJSON_AddItemToObject(item, "waveType", waveType_json);
	cJSON_AddItemToObject(item, "actualSignalFreq", actualSignalFreq_json);
	cJSON_AddItemToObject(item, "actualVpp", actualVpp_json);
    cJSON_AddItemToObject(item, "actualVOffset", actualVOffset_json);
    cJSON_AddItemToArray(array1, item);

    // Print the JSON object
    char *jsonString = cJSON_Print(root);
    strcat(jsonString, "\r");  // add newline character
    HAL_UART_Transmit_IT(&huart2, (uint8_t *)jsonString, strlen(jsonString));

	// Free the allocated memory
	cJSON_Delete(root);
	free(jsonString);
}

/**
  * @UART receive call back function
  * @retval None
  */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle)
{
    if (UartHandle->Instance == USART2)
	{
    	if (RxIndex < RX_BUFFER_SIZE - 1) // Check if buffer has space
    	    {
    	      if (RxData == '\n') // Check for end of message
    	      {
    	        RxBuffer[RxIndex] = '\0'; // Add null terminator to end of message
    	        process_message((char*)RxBuffer); // Process message
    	        RxIndex = 0; // Reset buffer index for next message
    	      }
    	      else // If not end of message, add data to buffer
    	      {
    	        RxBuffer[RxIndex] = RxData;
    	        RxIndex++;
    	      }
    	    }
    	    else // If buffer is full, reset buffer index and ignore message
    	    {
    	      RxIndex = 0;
    	    }
    	    HAL_UART_Receive_IT(&huart2, &RxData, 1); // Restart interrupt-based receive
    }
}

void process_message(char* message)
{
	// Parse the JSON string
	cJSON *root = cJSON_Parse(message);

    // Get the "awg" object
    cJSON *awg = cJSON_GetObjectItemCaseSensitive(root, "awg");

    // Get the "1" array
    cJSON *awg_1 = cJSON_GetObjectItemCaseSensitive(awg, "1");

    // Get the first object in the array
    cJSON *awg_1_0 = cJSON_GetArrayItem(awg_1, 0);

    // Get the "signalType" string
    cJSON *command = cJSON_GetObjectItemCaseSensitive(awg_1_0, "command");
    char *command_str = cJSON_GetStringValue(command);
    if (strcmp(command_str, "getCurrentState") == 0)
    {
    	char* currentState;
    	char* currentWave;

    	if (Vstate == STOP)
    	{
    		currentState = "idle";
    	} else
    	{
    		currentState = "running";
    	}

    	if (Vtype == SQUARE)
    	{
    		currentWave = "square";
    	} else if (Vtype == SIN)
    	{
    		currentWave = "sine";
    	} else if (Vtype == TRI)
    	{
    		currentWave = "triangle";
    	} else if (Vtype == SAW)
    	{
    		currentWave = "sawtooth";
    	} else
    	{
    		currentWave = "DC";
    	}

    	json_transmit("getCurrentState", currentState, currentWave, Vfreq, Vampli, Voffset);

    } else if (strcmp(command_str, "stop") == 0)
    {
    	Vstate = STOP;
    } else if (strcmp(command_str, "setRegularWaveform") == 0)
    {
    	Vstate = RUN;

    	// Get the "signalType" string
    	cJSON *signalType = cJSON_GetObjectItemCaseSensitive(awg_1_0, "signalType");
        char *signalType_str = cJSON_GetStringValue(signalType);
        if (strcmp(signalType_str, "DC") == 0)
        {
        	Vtype = DC;
        } else if (strcmp(signalType_str, "Sine Wave") == 0)
        {
        	Vtype = SIN;
        } else if (strcmp(signalType_str, "Triangle Wave") == 0)
        {
        	Vtype = TRI;
        } else if (strcmp(signalType_str, "Sawtooth Wave") == 0)
        {
        	Vtype = SAW;
        } else if (strcmp(signalType_str, "Square Wave(Digital)") == 0)
        {
        	Vtype = SQUARE;
        }

   	    // Get the "signalFreq" number
   	    cJSON *signalFreq = cJSON_GetObjectItemCaseSensitive(awg_1_0, "signalFreq");
   	    Vfreq = cJSON_GetNumberValue(signalFreq);

   	    // Get the "vpp" number
   	    cJSON *vpp = cJSON_GetObjectItemCaseSensitive(awg_1_0, "vpp");
   	    Vampli = cJSON_GetNumberValue(vpp);

   	    // Get the "vOffset" number
   	    cJSON *vOffset = cJSON_GetObjectItemCaseSensitive(awg_1_0, "vOffset");
   	    Voffset = cJSON_GetNumberValue(vOffset);

    }

    // Clean up cJSON objects
    cJSON_Delete(root);

}

/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM1 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM1) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */


  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
