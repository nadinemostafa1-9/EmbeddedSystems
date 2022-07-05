/*
 * STM32103c6_USART_Driver.c
 *
 *  Created on: Jul 5, 2022
 *      Author: UNiversaL
 */

#include "STM32103c6_USART_Driver.h"
#include "STM32103c6_GPIO_Driver.h"

USART_Config_t * Global_Usart;

void  MCAL_USART_init (USART_t *USARTx,USART_Config_t* USARTConfig){
	//enable clock for uart
	if(USARTx==USART1)
		CLK_EN_USART1();
	else if(USARTx==USART2)
		CLK_EN_USART2();
	else if(USARTx==USART3)
		CLK_EN_USART3();

	Global_Usart=USARTConfig;
	//enable USART Module
		//Bit 13 UE: USART enable
		//When this bit is cleared the USART prescalers and outputs are stopped
		USARTx -> CR1 |= 1<<13 ;
	//check mode
	if(USARTConfig->USART_Mode==USART_MODE_TX)
		USARTx->CR1=USART_MODE_TX;
	else if(USARTConfig->USART_Mode==USART_MODE_RX)
		USARTx->CR1=USART_MODE_RX;
	else
		USARTx->CR1=USART_MODE_TX_RX;

	//data length ( default is 8 bits)
	if(USARTConfig->PayloadLen==USART_Payload_len_9)
		USARTx->CR1=USART_Payload_len_9;

	//parity
	if(USARTConfig->Parity == USART_ODD_Parity)
		USARTx->CR1=USART_ODD_Parity;
	else if(USARTConfig->Parity==USART_EVEN_Parity)
		USARTx->CR1=USART_EVEN_Parity;

	//select number of Stop Bits
		USARTx->CR1 |= USARTConfig->StopBits;

		USARTx->BRR=USART_BRR_Register(36000000,USARTConfig->BaudRate);





}

void  MCAL_USART_SendData (USART_t *USARTx, uint16_t *pTxBuffer,enum Polling_Mechanism PollingEn)
{

	//Bit 7 TXE: Transmit data register empty
	//wait until TXE flag is set
	if (PollingEn == enable)
		while(!(USARTx->SR & 1 << 7));

	if (Global_Usart->PayloadLen==USART_Payload_len_9)
	{
		USARTx-> DR = (*pTxBuffer&(uint16_t) 0x1FF);
	}else
	{
		// USART_Payload_Length_8B
		USARTx-> DR = (*pTxBuffer&(uint8_t) 0xFF);
	}
}

void  MCAL_USART_ReceiveData (USART_t *USARTx, uint16_t *pTxBuffer,enum Polling_Mechanism PollingEn){
	//Bit 5 RXNE: receive data register not empty
		//wait until  flag is set
		if (PollingEn == enable)
			while(!(USARTx->SR & 1 << 5));

		if (Global_Usart->PayloadLen == USART_Payload_len_9 )
			{
				if (Global_Usart->Parity == USART_NONE_Parity ){
					//no parity so all 9bit are considered data
					*((uint16_t*)pTxBuffer) = USARTx-> DR ;
				}else
				{
					//parity is used, 8bit is data bits and 1 bit is parity
					*((uint16_t*)pTxBuffer) = (USARTx-> DR & (uint8_t)0xFF);
				}

			}else
			{
				//this is 8bit data
				if (Global_Usart->Parity == USART_NONE_Parity )
				{
					*((uint16_t*)pTxBuffer) = (USARTx-> DR & (uint8_t)0xFF);

				}else
				{
					//parity is used, 7 bits are only the data bits
					*((uint16_t*)pTxBuffer) = (USARTx-> DR & (uint8_t)0x7F);
				}
			}
}

	void MCAL_USART_GPIO_SetPins (USART_t *USARTx){
		GPIO_pinConfig_t UART_PinConfig;;
		if(USARTx == USART1)
		{
			//	USART1_TX  PA9
			UART_PinConfig.GPIO_PinNumber = GPIO_PIN_9;
			UART_PinConfig.GPIO_MODE = GPIO_MODE_AF_PUSH_PULL;
			UART_PinConfig.GPIO_Output_Speed = GPIO_SPEED_10M;
			MCAL_GPIO_Init(GPIOA,&UART_PinConfig);
			//	USART1_RX  PA10
			UART_PinConfig.GPIO_PinNumber = GPIO_PIN_10;
			UART_PinConfig.GPIO_MODE=GPIO_MODE_INPUT_FLOATING;
			MCAL_GPIO_Init(GPIOA,&UART_PinConfig);
		}
		if(USARTx == USART2)
		{
			//	USART2_TX  PA2
			UART_PinConfig.GPIO_PinNumber = GPIO_PIN_2;
			UART_PinConfig.GPIO_MODE = GPIO_MODE_AF_PUSH_PULL;
			UART_PinConfig.GPIO_Output_Speed = GPIO_SPEED_10M;
			MCAL_GPIO_Init(GPIOA,&UART_PinConfig);
			//	USART1_RX  PA3
			UART_PinConfig.GPIO_PinNumber = GPIO_PIN_3;
			UART_PinConfig.GPIO_MODE=GPIO_MODE_INPUT_FLOATING;
			MCAL_GPIO_Init(GPIOA,&UART_PinConfig);
		}
		if(USARTx == USART3)
		{
			//	USART3_TX  PB10
			UART_PinConfig.GPIO_PinNumber = GPIO_PIN_10;
			UART_PinConfig.GPIO_MODE = GPIO_MODE_AF_PUSH_PULL;
			UART_PinConfig.GPIO_Output_Speed = GPIO_SPEED_10M;
			MCAL_GPIO_Init(GPIOB,&UART_PinConfig);
			//	USART3_RX  PA11
			UART_PinConfig.GPIO_PinNumber = GPIO_PIN_11;
			UART_PinConfig.GPIO_MODE=GPIO_MODE_INPUT_FLOATING;
			MCAL_GPIO_Init(GPIOB,&UART_PinConfig);

		}
	}
