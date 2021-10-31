/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
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

#if !defined(__SOFT_FP__) && defined(__ARM_FP)
  #warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif
#include "STM32103c6_GPIO_Driver.h"
void clock_init(){
	 //enable clock for port A and B
		CLK_EN_GPIOA();
		CLK_EN_GPIOB();
}
void GPIO_init(){
	GPIO_pinConfig_t config;
	//set portA.1 as floating input
	config.GPIO_PinNumber=GPIO_PIN_1;
	config.GPIO_MODE=GPIO_MODE_INPUT_FLOATING;
	MCAL_GPIO_Init(GPIOA, &config);
	//set portB.1 as output
	GPIO_pinConfig_t config2;
	config2.GPIO_PinNumber=GPIO_PIN_1;
	config2.GPIO_MODE=GPIO_MODE_OUTPUT_PUSH_PULL;
	config2.GPIO_Output_Speed=GPIO_SPEED_10M;
	MCAL_GPIO_Init(GPIOB, &config2);

	//set portA.13 as floating input
	GPIO_pinConfig_t config3;
	config3.GPIO_PinNumber=GPIO_PIN_13;
	config3.GPIO_MODE=GPIO_MODE_INPUT_FLOATING;
	MCAL_GPIO_Init(GPIOA, &config3);
	//set portB.13 as output
	GPIO_pinConfig_t config4;
	config4.GPIO_PinNumber=GPIO_PIN_13;
	config4.GPIO_MODE=GPIO_MODE_OUTPUT_PUSH_PULL;
	config4.GPIO_Output_Speed=GPIO_SPEED_10M;
	MCAL_GPIO_Init(GPIOB, &config4);
}
void delay(){
	for(int i=0;i<5000;i++);
}
int main(void)
{
	clock_init();
	GPIO_init();

	while(1){

		if(MCAL_GPIO_ReadPin(GPIOA, GPIO_PIN_1)==0){
			MCAL_GPIO_TogglePin(GPIOB,GPIO_PIN_1);
			while(MCAL_GPIO_ReadPin(GPIOA, GPIO_PIN_1)==0);
		}
		if(MCAL_GPIO_ReadPin(GPIOA, GPIO_PIN_13)==1){
			MCAL_GPIO_TogglePin(GPIOB,GPIO_PIN_13);
		}
		delay();
	}
	return 0;

}
