/*
 * STM32103c6_SPI_Driver.c
 *
 *  Created on: Jul 10, 2022
 *      Author: UNiversaL
 */
#include "stdlib.h"
#include "STM32103c6_SPI_Driver.h"
#include "STM32103c6_GPIO_Driver.h"
/*
 *=======================================================================
 *						GENERIC VARIABLES
 *=======================================================================
 *
*/
SPI_Cfg* Global_SPI_Config[2] = {NULL, NULL} ;
SPI_Cfg Global_SPI_Config1 ;
SPI_Cfg Global_SPI_Config2 ;
/*
 *=======================================================================
 *						GENERIC MACROS
 *=======================================================================
 *
*/
#define SPI1_Index				0
#define SPI2_Index				1

#define SPI_SR_TXE				((uint8_t)0x02)		//Transmit buffer empty
#define SPI_SR_RXNE				((uint8_t)0x01)		//Receive buffer Not empty



/////// functions ////////////
void MCAL_SPI_Init (SPI_t * SPIx, SPI_Cfg * SPI_Config ){
	//Safety for registers
		uint16_t tmpreg_CR1 = 0;
		uint16_t tmpreg_CR2 = 0;

		if (SPIx == SPI1)
		{
			Global_SPI_Config1 = *SPI_Config;
			Global_SPI_Config[SPI1_Index] = &Global_SPI_Config1;
			CLK_EN_SPI1();

		}else if (SPIx == SPI2)
		{
			Global_SPI_Config2 = *SPI_Config;
			Global_SPI_Config[SPI2_Index] = &Global_SPI_Config2;
			CLK_EN_SPI2();
		}

		//Enable SPI Module
		//CR1 Bit 6 SPE: SPI enable
		tmpreg_CR1 = (0x1U<<6) ;

		//Enable MASTER/SLAVE
		tmpreg_CR1 |= SPI_Config->Device_Mode;


		//SPI_Frame_Format
		tmpreg_CR1 |= SPI_Config->Frame_format ;

		//SPI_DATA_SIZE
		tmpreg_CR1 |= SPI_Config->DataSize ;

        //SPI set orr reset NSS
		tmpreg_CR1 |= SPI_Config->NSS ;

		SPIx->CR1 = tmpreg_CR1 ;
		SPIx->CR2 = tmpreg_CR2 ;

		//SPI_BaudRatePrescaler
		tmpreg_CR1 |= SPI_Config->SPI_BaudRatePrescaler ;


}

void MCAL_SPI_SendData (SPI_t * SPIx, uint16_t *pTxBuffer, enum PollingMechanism PollingEn){
	if (PollingEn == PollingEnable)
			while(!(SPIx->SR & SPI_SR_TXE));

		SPIx->DR = *pTxBuffer ;
}
void MCAL_SPI_ReceiveData (SPI_t * SPIx, uint16_t *pRxBuffer, enum PollingMechanism PollingEn){
	if (PollingEn == PollingEnable)
			while(!(SPIx->SR & SPI_SR_RXNE));

		*pRxBuffer = SPIx->DR ;
}


void MCAL_SPI_TX_RX (SPI_t* SPIx, uint16_t *pTRxBuffer, enum PollingMechanism PollingEn)
{
	//Transmit
	MCAL_SPI_SendData( SPIx, pTRxBuffer, PollingEn);

	//Receive
	MCAL_SPI_ReceiveData( SPIx, pTRxBuffer, PollingEn);
}

void MCAL_SPI_GPIO_Set_Pins (SPI_t* SPIx){
	GPIO_pinConfig_t PinCfg ;

		if(SPIx == SPI1)
		{
			//	PA4 : SPI1_NSS
			//	PA5 : SPI1_SCK
			//	PA6 : SPI1_MISO
			//	PA7 : SPI1_MOSI
			if(Global_SPI_Config[SPI1_Index]->Device_Mode == SPI_DEV_MODE_MASTER)
			{

				//	PA5 : SPI1_SCK
				//Master AF push-pull
				PinCfg.GPIO_PinNumber = GPIO_PIN_5 ;
				PinCfg.GPIO_MODE = GPIO_MODE_OUTPUT_PUSH_PULL;
				PinCfg.GPIO_Output_Speed = GPIO_SPEED_10M;
				MCAL_GPIO_Init(GPIOA, &PinCfg);

				//	PA6 : SPI1_MISO (supported only full duplex)
				//full duplex / master Input floating
				PinCfg.GPIO_PinNumber = GPIO_PIN_6;
				PinCfg.GPIO_MODE = GPIO_MODE_INPUT_FLOATING;
				MCAL_GPIO_Init(GPIOA, &PinCfg);

				//	PA7 : SPI1_MOSI
				//full duplex / master AF push-pull
				PinCfg.GPIO_PinNumber = GPIO_PIN_7 ;
				PinCfg.GPIO_MODE = GPIO_MODE_OUTPUT_PUSH_PULL;
				PinCfg.GPIO_Output_Speed = GPIO_SPEED_10M;
				MCAL_GPIO_Init(GPIOA, &PinCfg);


			}else //Slave
			{

				//	PA5 : SPI1_SCK
				//Slave Input floating
				PinCfg.GPIO_PinNumber = GPIO_PIN_5;
				PinCfg.GPIO_MODE = GPIO_MODE_INPUT_FLOATING;
				MCAL_GPIO_Init(GPIOA, &PinCfg);

				//	PA6 : SPI1_MISO (supported only full duplex)
				//full duplex /Slave AF push-pull
				PinCfg.GPIO_PinNumber = GPIO_PIN_6 ;
				PinCfg.GPIO_MODE = GPIO_MODE_OUTPUT_PUSH_PULL;
				PinCfg.GPIO_Output_Speed = GPIO_SPEED_10M;
				MCAL_GPIO_Init(GPIOA, &PinCfg);

				//	PA7 : SPI1_MOSI
				//full duplex / Slave Input floating
				PinCfg.GPIO_PinNumber = GPIO_PIN_7;
				PinCfg.GPIO_MODE = GPIO_MODE_INPUT_FLOATING;
				MCAL_GPIO_Init(GPIOA, &PinCfg);
			}


		}else if(SPIx == SPI2)
		{
			//	PB12 : SPI1_NSS
			//	PB13 : SPI1_SCK
			//	PB14 : SPI1_MISO
			//	PB15 : SPI1_MOSI
			if(Global_SPI_Config[SPI2_Index]->Device_Mode == SPI_DEV_MODE_MASTER)
			{

				//	PB13 : SPI1_SCK
				//Master AF push-pull
				PinCfg.GPIO_PinNumber = GPIO_PIN_13 ;
				PinCfg.GPIO_MODE = GPIO_MODE_OUTPUT_PUSH_PULL;
				PinCfg.GPIO_Output_Speed = GPIO_SPEED_10M;
				MCAL_GPIO_Init(GPIOB, &PinCfg);

				//	PB14 : SPI1_MISO (supported only full duplex)
				//full duplex / master Input floating
				PinCfg.GPIO_PinNumber = GPIO_PIN_14;
				PinCfg.GPIO_MODE = GPIO_MODE_INPUT_FLOATING;
				MCAL_GPIO_Init(GPIOB, &PinCfg);

				//	PB15 : SPI1_MOSI
				//full duplex / master AF push-pull
				PinCfg.GPIO_PinNumber = GPIO_PIN_15 ;
				PinCfg.GPIO_MODE = GPIO_MODE_OUTPUT_PUSH_PULL;
				PinCfg.GPIO_Output_Speed = GPIO_SPEED_10M;
				MCAL_GPIO_Init(GPIOB, &PinCfg);


			}else //Slave
			{

				//	PB13 : SPI1_SCK
				//Slave Input floating
				PinCfg.GPIO_PinNumber = GPIO_PIN_13;
				PinCfg.GPIO_MODE = GPIO_MODE_INPUT_FLOATING;
				MCAL_GPIO_Init(GPIOB, &PinCfg);

				//	PB14 : SPI1_MISO (supported only full duplex)
				//full duplex /Slave AF push-pull
				PinCfg.GPIO_PinNumber = GPIO_PIN_14 ;
				PinCfg.GPIO_MODE = GPIO_MODE_OUTPUT_PUSH_PULL;
				PinCfg.GPIO_Output_Speed = GPIO_SPEED_10M;
				MCAL_GPIO_Init(GPIOB, &PinCfg);

				//	PB15 : SPI1_MOSI
				//full duplex / Slave Input floating
				PinCfg.GPIO_PinNumber = GPIO_PIN_15;
				PinCfg.GPIO_MODE = GPIO_MODE_INPUT_FLOATING;
				MCAL_GPIO_Init(GPIOB, &PinCfg);
			}
		}
}
