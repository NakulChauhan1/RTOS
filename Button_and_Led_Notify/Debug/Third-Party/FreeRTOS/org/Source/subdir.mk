################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/FreeRTOS/org/Source/croutine.c \
../Third-Party/FreeRTOS/org/Source/event_groups.c \
../Third-Party/FreeRTOS/org/Source/list.c \
../Third-Party/FreeRTOS/org/Source/queue.c \
../Third-Party/FreeRTOS/org/Source/stream_buffer.c \
../Third-Party/FreeRTOS/org/Source/tasks.c \
../Third-Party/FreeRTOS/org/Source/timers.c 

OBJS += \
./Third-Party/FreeRTOS/org/Source/croutine.o \
./Third-Party/FreeRTOS/org/Source/event_groups.o \
./Third-Party/FreeRTOS/org/Source/list.o \
./Third-Party/FreeRTOS/org/Source/queue.o \
./Third-Party/FreeRTOS/org/Source/stream_buffer.o \
./Third-Party/FreeRTOS/org/Source/tasks.o \
./Third-Party/FreeRTOS/org/Source/timers.o 

C_DEPS += \
./Third-Party/FreeRTOS/org/Source/croutine.d \
./Third-Party/FreeRTOS/org/Source/event_groups.d \
./Third-Party/FreeRTOS/org/Source/list.d \
./Third-Party/FreeRTOS/org/Source/queue.d \
./Third-Party/FreeRTOS/org/Source/stream_buffer.d \
./Third-Party/FreeRTOS/org/Source/tasks.d \
./Third-Party/FreeRTOS/org/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/FreeRTOS/org/Source/croutine.o: ../Third-Party/FreeRTOS/org/Source/croutine.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/croutine.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/FreeRTOS/org/Source/event_groups.o: ../Third-Party/FreeRTOS/org/Source/event_groups.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/event_groups.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/FreeRTOS/org/Source/list.o: ../Third-Party/FreeRTOS/org/Source/list.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/list.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/FreeRTOS/org/Source/queue.o: ../Third-Party/FreeRTOS/org/Source/queue.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/queue.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/FreeRTOS/org/Source/stream_buffer.o: ../Third-Party/FreeRTOS/org/Source/stream_buffer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/stream_buffer.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/FreeRTOS/org/Source/tasks.o: ../Third-Party/FreeRTOS/org/Source/tasks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/tasks.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/FreeRTOS/org/Source/timers.o: ../Third-Party/FreeRTOS/org/Source/timers.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Core/Inc -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/include" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/nakul/Desktop/Workspace/RTOS_WORKSPACE/Button_and_Led_Notify/Third-Party/FreeRTOS/org/Source/include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/FreeRTOS/org/Source/timers.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

