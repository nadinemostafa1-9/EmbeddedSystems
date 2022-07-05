/*
 * STM32103c6_USART_Driver.h
 *
 *  Created on: Oct 29, 2021
 *      Author: UNiversaL
 */

#ifndef STM32103C6_USART_DRIVER_H_
#define STM32103C6_USART_DRIVER_H_

//includes
#include"STM32F103x8_DeviceHeader.h"

enum USART_IRQ_Event
{
	USART_IRQ_TXE,	//transmit data register empty
	USART_IRQ_TC,	//Transmission complete
	USART_IRQ_RXNE,	//received data ready to be read
	USART_IRQ_ORE,	//overrun error detected
	USART_IRQ_PE     //Parity error
};

enum Polling_Mechanism{
	enable,
	disable
};

//==========================
//configuration
typedef struct{
	uint8_t USART_Mode;  //configure uart TX or Rx or TX/RX settings @ref Usart_mode

	uint32_t BaudRate;						// specifies rate
									       // settings @ref USART_BaudRate
	uint8_t  PayloadLen; 					// specifies payload length @ref Payload_length

	uint8_t  Parity;					//select parity mode
									//@ref Parity_define

	uint8_t StopBits;					//select number of Stop Bits
										//@ref StopBits_define

	uint8_t HWFlowCTRL;					//enable or disable HW flow control modes
										//@ref HWFlowCTRL_define

	uint8_t IRQ_Enable;				    //enable or disable USART IRQ TX/RX
										//@ref IRQ_Enable_define

	void (*P_IRQ_CallBack)(enum USART_IRQ_Event );		//pointer to IRQ call back function which will be called once IRQ happened

}USART_Config_t;

//reference values

/*
 *	@ref USART_MODE_define
 */
#define USART_MODE_TX					    (uint32_t)(1<<3)
#define USART_MODE_RX					    (uint32_t)(1<<2)
#define USART_MODE_TX_RX					(uint32_t)((1<<2) | (1<<3))

//@ref BaudRate_define
#define USART_BaudRate_2400				2400
#define USART_BaudRate_9600				9600
#define USART_BaudRate_19200			19200
#define USART_BaudRate_57600			57600
#define USART_BaudRate_115200			(uint8_t)115200
#define USART_BaudRate_230400			230400
#define USART_BaudRate_460800			460800
#define USART_BaudRate_921600			921600
#define USART_BaudRate_2250000			2250000
#define USART_BaudRate_4500000			4500000

//@ref Payload_define
#define USART_Payload_len_8                0<<12
#define USART_Payload_len_9                1<<12

//@ref Parity_define
//Bit 10 PCE: Parity control enable
//Bit 9 PS: Parity selection
#define  USART_NONE_Parity				(uint32_t) (0<<10)
#define  USART_EVEN_Parity				((uint32_t) (1<<10)|(0<<9))
#define  USART_ODD_Parity				((uint32_t) (1<<10)|(1<<9))

//@ref StopBits_define
//Bits 13:12 STOP: STOP bits
#define  USART_1_StopBit					(uint32_t) (0)
#define  USART_Half_StopBit				    (uint32_t) (1<<12)
#define  USART_2_StopBit					(uint32_t) (2<<12)
#define  USART_1_Half_StopBit			    (uint32_t) (3<<12)

//@ref IRQ_Enable_define
//Bit 7 TXEIE: TXE interrupt enable
//Bit 6 TCIE: Transmission complete interrupt enable
//Bit 5 RXNEIE: RXNE interrupt enable
//Bit 8 PEIE: PE interrupt enable
#define  USART_IRQ_Enable_NONE			(uint32_t) (0)
#define  USART_IRQ_Enable_TXE			(uint32_t) (1<<7)
#define  USART_IRQ_Enable_TC				(uint32_t) (1<<6)
#define  USART_IRQ_Enable_RXNE			(uint32_t) (1<<5)
#define  USART_IRQ_Enable_PE				(uint32_t) (1<<8)



//@ref USART_IRQ_EN_define
#define  USART_IRQ_ENABLE							0
#define  USART_IRQ_DISABLE							1
// =========================================================================
// 				APIs
//==========================================================================

void  MCAL_USART_init (USART_t *USARTx,USART_Config_t* USARTConfig);
void  MCAL_USART_SendData (USART_t *USARTx, uint16_t *pTxBuffer,enum Polling_Mechanism PollingEn);
void  MCAL_USART_ReceiveData (USART_t *USARTx, uint16_t *pTxBuffer,enum Polling_Mechanism PollingEn);
void  MCAL_USART_GPIO_SetPins (USART_t *USARTx);


//-*-*-*-*-*-*-*-*-*-*-*-
//Generic Macros:
//-*-*-*-*-*-*-*-*-*-*-*

//BaudRate Calculation
#define USARTDIV(PCLK,BAUD)					(uint32_t) (PCLK/(16*BAUD))
#define USARTDIV_MUL100(PCLK,BAUD)			(uint32_t) (25*PCLK/(4*BAUD))
#define Mantissa_MUL100(PCLK,BAUD)			(uint32_t) (USARTDIV(PCLK,BAUD)*100)
#define Mantissa(PCLK,BAUD)					(uint32_t) USARTDIV(PCLK,BAUD)
#define DIV_Fraction(PCLK,BAUD)				(uint32_t) ((USARTDIV_MUL100(PCLK,BAUD) - Mantissa_MUL100(PCLK,BAUD))*16)
#define USART_BRR_Register(PCLK,BAUD)		(uint32_t) ((Mantissa(PCLK, BAUD)) << 4) | ((DIV_Fraction(PCLK, BAUD)) & 0xF)

#endif /* STM32103C6_USART_DRIVER_H_ */
