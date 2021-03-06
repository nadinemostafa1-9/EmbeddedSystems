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
#include "STM32103c6_USART_Driver.h"
#include "STM32103c6_SPI_Driver.h"
void clock_init(){
	 //enable clock for port A and B
		CLK_EN_GPIOA();
		CLK_EN_GPIOB();
		CLK_EN_AFIO();
}

//configuration
SPI_Cfg spi;
uint16_t ch=0xAB;
int main(void)
{
	spi.DataSize=SPI_DATA_8_bit;
	spi.Device_Mode=SPI_DEV_MODE_MASTER;
	spi.NSS=SPI_SW_NSS_SET;	//choose software
	spi.SPI_BaudRatePrescaler=SPI_BaudRatePrescaler_8;
    MCAL_SPI_Init(SPI1,&spi);
	while(1){
        //set GPIO pin4 to low for slave select after writing data set it back to high
		//Send to SPI
			MCAL_GPIO_WritePin(GPIOA, 4, 0);
			MCAL_SPI_TX_RX(SPI1, &ch, PollingEnable);
			MCAL_GPIO_WritePin(GPIOA, 4, 1);
		}
	return 0;

}
