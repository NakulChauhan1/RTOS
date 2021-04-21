################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o: ../Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/First_RTOS_Project_/Third-Party/SEGGER/Config" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/First_RTOS_Project_/Third-Party/SEGGER/OS" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/First_RTOS_Project_/Third-Party/SEGGER/SEGGER" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/First_RTOS_Project_/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/First_RTOS_Project_/Third-Party/FreeRTOS/org/Source/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/First_RTOS_Project_/Third-Party/FreeRTOS/org/Source" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

