/* 
  Create task's that toggles led and when user presses the button, the button interrupt handler must run,
  and it should send notificaion to the current LED toggling task, and when LED toggling task receives the
  notficaion, it should delete itself.
*/


/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "stdint.h"
#include <string.h>

#include "FreeRTOS.h"
#include "task.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */

//static uint8_t button_pressed;
TaskHandle_t task1_handler_address;
TaskHandle_t task2_handler_address;
TaskHandle_t task3_handler_address;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */
static void button_task_handler(void *);
static void led_task_handler(void *);
static void print_task_handler(void *);
void button_handler();
static void rtos_delay(uint32_t ms_delay);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  BaseType_t ret;

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
  MX_USART2_UART_Init();

  /* USER CODE BEGIN 2 */

  //ret = xTaskCreate(button_task_handler, "BUTTON TASK", 500, "BUTTON TASK running\n\n", 2, &task1_handler_address);
  //configASSERT(ret == pdPASS);  

  ret = xTaskCreate(led_task_handler, "LED TASK", 500, "LED TASK running\n\n", 2, &task2_handler_address);
  configASSERT(ret == pdPASS);

  //ret = xTaskCreate(print_task_handler, "PRINT TASK", 500, "PRINT TASK running\n\n", 2, &task3_handler_address);
  //configASSERT(ret == pdPASS);

  //Start the Schedular
  vTaskStartScheduler();


  //Note: Control never comes out of this function ie Schedular untill unless schedular launch is failed

  

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
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
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE3);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 16;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
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
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LD2_Pin */
  GPIO_InitStruct.Pin = LD2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 6, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 4 */

/*static void button_task_handler(void * parameter)
{

    while(1)
    {
      HAL_UART_AbortTransmit(&huart2);
      if (HAL_UART_Transmit(&huart2, (uint8_t *)parameter, 21, 100) != HAL_OK)
      {
        Error_Handler();
      }
      HAL_Delay(1000);

      //BY DEFAULT BUTTON PIN IS CONNECTED TO HIGH
      if (!HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin))
      {
          //BUTTON PRESSED

          //DELAY TO AVOID BUTTON DEBOUNCING, THEREFORE AVOIDING MULTIPLE NOTIFICATIONS
          rtos_delay(100);

          //NOTIFY LED TASK TO TOGGLE LED
          xTaskNotify(task2_handler_address, 0x0, eNoAction);

          //NOTIFY PRINT TASK TO PRINT NUMBER OF TIMES BUTTON PRESSED
          xTaskNotify(task3_handler_address, 0x0, eIncrement);
      }
    }
}*/

static void led_task_handler(void * parameter)
{
    while(1)
    {
      HAL_UART_AbortTransmit(&huart2);
      if (HAL_UART_Transmit(&huart2, (uint8_t *)parameter, strlen(parameter), 100) != HAL_OK)
      {
        Error_Handler();
      }

      //HAL_Delay(1000);

      HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);

      //wait untill notification event is not received from button ISR
      if (xTaskNotifyWait( 0, 0, NULL, pdMS_TO_TICKS(500) ) == pdTRUE)
      {

        HAL_UART_AbortTransmit(&huart2);
        if (HAL_UART_Transmit(&huart2, "NOTIFICATION RECEIVED, DELETING LED TASK\n", 42, 100) != HAL_OK)
        {
          Error_Handler();
        }
          //NOTIFICATION IS RECEIVED
          vTaskDelete(NULL);
      }
    }
}

/*static void print_task_handler(void * parameter)
{
  while(1)
  {
      uint32_t current_notif_value = 0;
      //uint8_t message[23] = "Button press count: \n";

      HAL_UART_AbortTransmit(&huart2);
      if (HAL_UART_Transmit(&huart2, (uint8_t *)parameter, 21, 100) != HAL_OK)
      {
        Error_Handler();
      }
      HAL_Delay(1000);

      //BY DEFAULT VALUE OF NOTIF COUNT IS 0, THEREFORE CURRENT_NOTIF_VALUE WILL GIVE NUMBER OF BUTTON PRESS 
      if(xTaskNotifyWait(0, 0, &current_notif_value, portMAX_DELAY ) == pdTRUE)
      {

        //message[22] =  (uint8_t)current_notif_value;
        //USART_Send(message, 23);
        //USART_Send(message[22], 4);
        //USART_Send("\n", 1);
      }
  }
}*/

void button_handler()
{

  BaseType_t pxHigherPriorityTaskWoken = pdFALSE;

  //NOTIFY LED TASK WHICH IS TOGGLING LED, AND THEREFORE DELETE THE LED TASK
  xTaskNotifyFromISR(task2_handler_address, 0, eNoAction, &pxHigherPriorityTaskWoken);
  /*Note: if sending notification wakes up any higher priority task,
          then pxHigherPriorityTaskWoken changes this field to pdTRUE. */

  portYIELD_FROM_ISR(pxHigherPriorityTaskWoken);

  /*BY THIS MACRO WE HAVE FORCED SCHEDULER TO RUN AFTER ISR EXITS, 
   AND HIGHER PRIORITY TASK WILL COME INTO CPU IF NOTIFY FROMISR()
   API UNLBOCKS SOME HIGHER PRIORITY TASK */
}

void USART_Send(uint8_t * data, uint8_t size)
{
    HAL_UART_AbortTransmit(&huart2);
    if(HAL_UART_Transmit(&huart2, data, size, 100))
    {
      Error_Handler();
    }
}


/**
  * @brief  
  * @note   This function is called  when GPIO interrupt took place, inside
  * HAL_GPIO_EXTI_IRQHandler().
  * @retval None
  */

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  button_handler();
}

static void rtos_delay(uint32_t ms_delay)
{
  uint32_t current_tick_count = xTaskGetTickCount();
  uint32_t tick_count_after_delay = current_tick_count + (ms_delay * configTICK_RATE_HZ)/1000;

  while(xTaskGetTickCount() != tick_count_after_delay);

}

/* USER CODE END 4 */

 /**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM6 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM6) {
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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
