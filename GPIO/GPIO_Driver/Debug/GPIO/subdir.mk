################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../GPIO/STM32f301x8_GPIO.c 

OBJS += \
./GPIO/STM32f301x8_GPIO.o 

C_DEPS += \
./GPIO/STM32f301x8_GPIO.d 


# Each subdirectory must supply rules for building sources it contributes
GPIO/STM32f301x8_GPIO.o: ../GPIO/STM32f301x8_GPIO.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -I"C:/Users/UNiversaL/STM32CubeIDE/workspace_1.4.0/Stm32f103c6_Drivers/includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"GPIO/STM32f301x8_GPIO.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

