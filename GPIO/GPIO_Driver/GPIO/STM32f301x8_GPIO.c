/*
 * STM32f301x8_GPIO.c
 *
 *  Created on: Oct 29, 2021
 *      Author: Nadine Mostafa
 */

#include "stdlib.h"
#include "STM32103c6_GPIO_Driver.h"
//Get pin position
uint32_t GPIO_CRLH_GetPosition (uint16_t PinNumber) {
	switch (PinNumber) {
	case GPIO_PIN_0 :
		return 0 ;
		break ;
	case GPIO_PIN_1 :
		return 4 ;
		break ;
	case GPIO_PIN_2 :
		return 8 ;
		break ;
	case GPIO_PIN_3 :
		return 12 ;
		break ;
	case GPIO_PIN_4 :
		return 16 ;
		break ;
	case GPIO_PIN_5 :
		return 20 ;
		break ;
	case GPIO_PIN_6 :
		return 24 ;
		break ;
	case GPIO_PIN_7 :
		return 28 ;
		break ;
	case GPIO_PIN_8 :
		return 0 ;
		break ;
	case GPIO_PIN_9 :
		return 4 ;
		break ;
	case GPIO_PIN_10 :
		return 8 ;
		break ;
	case GPIO_PIN_11 :
		return 12 ;
		break ;
	case GPIO_PIN_12 :
		return 16 ;
		break ;
	case GPIO_PIN_13 :
		return 20 ;
		break ;
	case GPIO_PIN_14 :
		return 24 ;
		break ;
	case GPIO_PIN_15 :
		return 28 ;
		break ;
	}
}

void MCAL_GPIO_Init (GPIO_t* GPIOx , GPIO_pinConfig_t* PinConfig) {

	uint8_t Pin_Config_Value = 0 ;

	// Port Configuration register Low (GPIOx_CRL) configure PINS from 0 to 7
	// Port Configuration register High (GPIOx_CRH) configure PINS from 8 to 15
	volatile uint32_t* ConfigReg = NULL ;
	ConfigReg = (PinConfig->GPIO_PinNumber < GPIO_PIN_8 ) ? (&GPIOx->CRL) : (&GPIOx->CRH) ;
	// clear CNF and MODE
		(*ConfigReg) &= ~ (0xF << GPIO_CRLH_GetPosition(PinConfig->GPIO_PinNumber)) ;

		// if pin is output
		if ( (PinConfig->GPIO_MODE == GPIO_MODE_AF_OPEN_DRAIN) || (PinConfig->GPIO_MODE == GPIO_MODE_AF_PUSH_PULL) || (PinConfig->GPIO_MODE == GPIO_MODE_OUTPUT_PUSH_PULL) || (PinConfig->GPIO_MODE == GPIO_MODE_OUTPUT_OPEN_DRAIN) ) {
			// Set CNF and MODE
			Pin_Config_Value = ( (((PinConfig->GPIO_MODE - 4) << 2) | (PinConfig->GPIO_Output_Speed)) & 0x0F ) ;
			(*ConfigReg) |= ( (Pin_Config_Value) << (GPIO_CRLH_GetPosition(PinConfig->GPIO_PinNumber)) ) ;
		}
		// if pin is input
		else {
			if ((PinConfig->GPIO_MODE == GPIO_MODE_INPUT_FLOATING) || (PinConfig->GPIO_MODE == GPIO_MODE_ANALOG)) {
				// Set CNF and MODE
				Pin_Config_Value = ( (((PinConfig->GPIO_MODE) << 2) | (0x0)) & 0x0F ) ;
				(*ConfigReg) |= ( (Pin_Config_Value) << (GPIO_CRLH_GetPosition(PinConfig->GPIO_PinNumber)) ) ;
			}
			else if (PinConfig->GPIO_MODE == GPIO_MODE_AF_INPUT) {
				// Set CNF and MODE
				Pin_Config_Value = ( (((PinConfig->GPIO_MODE) << 2) | (0x0)) & 0x0F ) ;
				(*ConfigReg) |= ( (Pin_Config_Value) << (GPIO_CRLH_GetPosition(PinConfig->GPIO_PinNumber)) ) ;
			}

		}
}
void MCAL_GPIO_DeInit (GPIO_t* GPIOx){
//Using RCC(reset controller)
	if ((uint32_t)GPIOx ==(uint32_t) GPIOA_BASE) {
			RCC->APB2RSTR |= (1 << 2) ;
			RCC->APB2RSTR &= ~(1 << 2) ;
		}
		else if ((uint32_t)GPIOx == GPIOB_BASE) {
			RCC->APB2RSTR |= (1 << 3) ;
			RCC->APB2RSTR &= ~(1 << 3) ;
		}
		else if ((uint32_t)GPIOx == GPIOC_BASE) {
			RCC->APB2RSTR |= (1 << 4) ;
			RCC->APB2RSTR &= ~(1 << 4) ;
		}
		else if ((uint32_t)GPIOx == GPIOD_BASE) {
			RCC->APB2RSTR |= (1 << 5) ;
			RCC->APB2RSTR &= ~(1 << 5) ;
		}
		else if ((uint32_t)GPIOx == GPIOE_BASE) {
			RCC->APB2RSTR |= (1 << 6) ;
			RCC->APB2RSTR &= ~(1 << 6) ;
		}

}
uint8_t MCAL_GPIO_ReadPin(GPIO_t* GPIOx , uint16_t PinNumber) {
	if ( (GPIOx->IDR & PinNumber) != (uint32_t)GPIO_PIN_RESET) {
		return GPIO_PIN_SET ;
	}
	else {
		return GPIO_PIN_RESET ;
	}
}

uint16_t MCAL_GPIO_ReadPort (GPIO_t * GPIOx) {
	return (uint16_t)GPIOx->IDR;
}
void MCAL_GPIO_WritePin (GPIO_t * GPIOx , uint16_t PinNumber , uint8_t Value) {
GPIOx->ODR |= (Value<<PinNumber);
}
void MCAL_GPIO_WritePort (GPIO_t * GPIOx , uint16_t Value) {
	GPIOx->ODR=(uint32_t)(Value);
}
void MCAL_GPIO_TogglePin (GPIO_t * GPIOx , uint16_t PinNumber) {
	GPIOx->ODR ^=PinNumber;
}
uint8_t MCAL_GPIO_LockPin (GPIO_t * GPIOx , uint16_t PinNumber) {
	volatile uint32_t temp = 1 << 16 ;
		temp |= PinNumber ;
		GPIOx->LCKR = temp ;
		GPIOx->LCKR = PinNumber ;
		GPIOx->LCKR = temp ;
		temp = GPIOx->LCKR ;
		if ( (uint32_t)(GPIOx->LCKR & (1<<16)) ) {
			return 1 ;
		}
		else {
			return 0 ;
		}
}
