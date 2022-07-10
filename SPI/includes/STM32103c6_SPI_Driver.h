/*
 * STM32103c6_SPI_Driver.h
 *
 *  Created on: Jul 10, 2022
 *      Author: UNiversaL
 */

#ifndef STM32103C6_SPI_DRIVER_H_
#define STM32103C6_SPI_DRIVER_H_

//includes
#include"STM32F103x8_DeviceHeader.h"
#include "STM32103c6_GPIO_Driver.h"
//Configuration struct
typedef struct{
uint16  Device_Mode;     //master or slave   select configuration @ref devmode
uint16  DataSize;    //8 bit or 16 bit        @ref datasize
uint16 Frame_format;  // LSB or MSB sent first @ref FF
uint16 NSS;           //slave select will work only on sw must set bit 9 in CR1  @ref NSS
uint16 SPI_BaudRatePrescaler	;//Specifies the baud rate prescaler value which will be used to configure TX/RX SCK clock.
									//this parameter must be set based on @ref SPI_BaudRatePrescaler
									//@note the communication clock is derived from the master clock. the slave clock
									//doesn't need to be set. %Take Care% you have to configure RCC enter
									//the correct clock to APB2 >> to SPI.
}SPI_Cfg;


//devmode   in CR1 register
#define SPI_DEV_MODE_SLAVE     (1<<2)
#define SPI_DEV_MODE_MASTER     0

//datasize  select frame length
#define SPI_DATA_8_bit         0
#define SPI_DATA_16_bit       (1<<11)

//FF
#define SPI_MSB_FIRST     0
#define SPI_LSB_FIRST    (1<<7)

//NSS
#define SPI_SW_NSS_SET    ((1U<<9)|(1U<<8))
#define SPI_SW_NSS_RESET  ((1<<9)))

//SPI_BaudRatePrescaler
//SPI_CR1 Bits 5:3 BR[2:0]: Baud rate control
#define SPI_BaudRatePrescaler_2					(0x00000000U)
#define SPI_BaudRatePrescaler_4					(0b001U << 3)
#define SPI_BaudRatePrescaler_8					(0b010U << 3)
#define SPI_BaudRatePrescaler_16				(0b011U << 3)
#define SPI_BaudRatePrescaler_32				(0b100U << 3)
#define SPI_BaudRatePrescaler_64				(0b101U << 3)
#define SPI_BaudRatePrescaler_128				(0b110U << 3)
#define SPI_BaudRatePrescaler_256				(0b111U << 3)

enum PollingMechanism
{
	PollingEnable,
	PollingDisable
};

//////////////////////////////////////// APIs /////////////////////////////////////////
void MCAL_SPI_Init (SPI_t * SPIx, SPI_Cfg * SPI_Config );
void MCAL_SPI_GPIO_Set_Pins (SPI_t* SPIx);
void MCAL_SPI_SendData (SPI_t * SPIx, uint16_t *pTxBuffer, enum PollingMechanism PollingEn);
void MCAL_SPI_ReceiveData (SPI_t * SPIx, uint16_t *pRxBuffer, enum PollingMechanism PollingEn);
void MCAL_SPI_TX_RX (SPI_t * SPIx, uint16_t *pTRxBuffer, enum PollingMechanism PollingEn);
void MCAL_SPI_WAIT_TC (SPI_t * SPIx);

#endif /* STM32103C6_SPI_DRIVER_H_ */
