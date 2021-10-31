/*
 * STM32F103x8.h
 *
 *  Created on: Oct 29, 2021
 *      Author: UNiversaL
 */

#ifndef STM32F103X8_DEVICEHEADER_H_
#define STM32F103X8_DEVICEHEADER_H_

//include
#include "Platform_Types.h"

/*--------------Base Addresses for peripherals------------*/

//RCC
#define RCC_BASE 							0x40021000UL
// ==================================================

//Base address of GPIO
#define GPIOA_BASE 							0x40010800UL
#define GPIOB_BASE 							0x40010C00UL
#define GPIOC_BASE 							0x40011000UL
#define GPIOD_BASE 							0x40011400UL
#define GPIOE_BASE 							0x40011800UL

// ==================================================

//Base address of AFIO
#define AFIO_BASE 							0x40010000UL
// ==================================================

//Base address of EXTI
#define EXTI_BASE 							0x40010400UL
//====================================================
//  RCC registers
typedef struct {
	volatile uint32_t CR ;
	volatile uint32_t CFGR ;
	volatile uint32_t CIR ;
	volatile uint32_t APB2RSTR ;
	volatile uint32_t APB1RSTR ;
	volatile uint32_t AHBENR ;
	volatile uint32_t APB2ENR ;
	volatile uint32_t APB1ENR ;
	volatile uint32_t BDCR ;
	volatile uint32_t CSR ;
}RCC_t;
// ==================================================

// GPIO Registers
typedef struct {
	volatile uint32_t CRL ;
	volatile uint32_t CRH ;
	volatile uint32_t IDR ;
	volatile uint32_t ODR ;
	volatile uint32_t BSRR ;
	volatile uint32_t BRR ;
	volatile uint32_t LCKR ;
}GPIO_t;
// ==================================================

// Peripheral Registers : AFIO
typedef struct {
	volatile uint32_t EVCR ;
	volatile uint32_t MAPR ;
	volatile uint32_t EXTICR1 ;
	volatile uint32_t EXTICR2 ;
	volatile uint32_t EXTICR3 ;
	volatile uint32_t EXTICR4 ;
	volatile uint32_t RESERVED ;
	volatile uint32_t MAPR2 ;
}AFIO_t;
// ==================================================

// Peripheral Registers : EXTI
typedef struct {
	volatile uint32_t IMR ;
	volatile uint32_t EMR ;
	volatile uint32_t RTSR ;
	volatile uint32_t FTSR ;
	volatile uint32_t SWIER ;
	volatile uint32_t PR ;
}EXTI_t;
// ==================================================

//---------------------------------------------------------------------------------------------------

// Peripheral Instants
#define GPIOA 								((GPIO_t *)GPIOA_BASE)
#define GPIOB 								((GPIO_t *)GPIOB_BASE)
#define GPIOC 								((GPIO_t *)GPIOC_BASE)
#define GPIOD 								((GPIO_t *)GPIOD_BASE)
#define GPIOE 								((GPIO_t *)GPIOE_BASE)
#define RCC 								((RCC_t *)RCC_BASE)
// ==================================================

//---------------------------------------------------------------------------------------------------
// Clock Management MACROS
#define CLK_EN_GPIOA()							(RCC->APB2ENR |= (1 << 2))
#define CLK_EN_GPIOB()							(RCC->APB2ENR |= (1 << 3))
#define CLK_EN_GPIOC()							(RCC->APB2ENR |= (1 << 4))
#define CLK_EN_GPIOD()							(RCC->APB2ENR |= (1 << 5))
#define CLK_EN_GPIOE()							(RCC->APB2ENR |= (1 << 6))
// ==================================================
#endif /* STM32F103X8_DEVICEHEADER_H_ */
