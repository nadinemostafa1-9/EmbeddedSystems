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

//NVIC
#define NVIC_BASE						0xE000E100UL
#define NVIC_ISER0						*(volatile uint32_t*)(NVIC_BASE + 0x000)
#define NVIC_ISER1						*(volatile uint32_t*)(NVIC_BASE + 0x004)
#define NVIC_ISER2						*(volatile uint32_t*)(NVIC_BASE + 0x008)
#define NVIC_ICER0						*(volatile uint32_t*)(NVIC_BASE + 0x080)
#define NVIC_ICER1						*(volatile uint32_t*)(NVIC_BASE + 0x084)
#define NVIC_ICER2						*(volatile uint32_t*)(NVIC_BASE + 0x088)
// ==================================================

//Base address of EXTI
#define EXTI_BASE 							0x40010400UL

// ==================================================

//Base address of USART
#define USART1_BASE 							0x40013800UL
#define USART2_BASE 							0x40004400UL
#define USART3_BASE 							0x40004800UL

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
// Peripheral Registers : USART
typedef struct {
	volatile uint32_t SR  ;
	volatile uint32_t DR  ;
	volatile uint32_t BRR ;
	volatile uint32_t CR1 ;
	volatile uint32_t CR2 ;
	volatile uint32_t CR3 ;
}USART_t;
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
#define USART1 								((USART_t *)USART1_BASE)
#define USART2 								((USART_t *)USART2_BASE)
#define USART3 								((USART_t *)USART3_BASE)
// ==================================================

//---------------------------------------------------------------------------------------------------
// Clock Management MACROS
#define CLK_EN_AFIO()							(RCC->APB2ENR |= (1 << 0))
#define CLK_EN_GPIOA()							(RCC->APB2ENR |= (1 << 2))
#define CLK_EN_GPIOB()							(RCC->APB2ENR |= (1 << 3))
#define CLK_EN_GPIOC()							(RCC->APB2ENR |= (1 << 4))
#define CLK_EN_GPIOD()							(RCC->APB2ENR |= (1 << 5))
#define CLK_EN_GPIOE()							(RCC->APB2ENR |= (1 << 6))
#define CLK_EN_USART1()							(RCC->APB2ENR |= (1 << 14))
#define CLK_EN_USART2()							(RCC->APB1ENR |= (1 << 17))
#define CLK_EN_USART3()							(RCC->APB1ENR |= (1 << 18))
// ==================================================

// @ref IVT_IRQ_Number
#define EXTI0_IRQ	6
#define EXTI1_IRQ	7
#define EXTI2_IRQ	8
#define EXTI3_IRQ	9
#define EXTI4_IRQ	10
#define EXTI5_IRQ	23
#define EXTI6_IRQ	23
#define EXTI7_IRQ	23
#define EXTI8_IRQ	23
#define EXTI9_IRQ	23
#define EXTI10_IRQ	40
#define EXTI11_IRQ	40
#define EXTI12_IRQ	40
#define EXTI13_IRQ	40
#define EXTI14_IRQ	40
#define EXTI15_IRQ	40

#define USART1_IRQ	37
#define USART2_IRQ	38
#define USART3_IRQ	39

// NVIC_IRQ Enable / Disable
#define NVIC_IRQ6_EXTI0_ENABLE()			(NVIC_ISER0 |= 1<<EXTI0_IRQ)
#define NVIC_IRQ7_EXTI1_ENABLE()			(NVIC_ISER0 |= 1<<EXTI1_IRQ)
#define NVIC_IRQ8_EXTI2_ENABLE()			(NVIC_ISER0 |= 1<<EXTI2_IRQ)
#define NVIC_IRQ9_EXTI3_ENABLE()			(NVIC_ISER0 |= 1<<EXTI3_IRQ)
#define NVIC_IRQ10_EXTI4_ENABLE()			(NVIC_ISER0 |= 1<<EXTI4_IRQ)
#define NVIC_IRQ23_EXTI5_9_ENABLE()			(NVIC_ISER0 |= 1<<EXTI5_IRQ)
#define NVIC_IRQ40_EXTI10_15_ENABLE()		(NVIC_ISER1 |= 1<<8) 	//40-32

#define NVIC_IRQ6_EXTI0_DISABLE()			(NVIC_ICER0 |= 1<<EXTI0_IRQ)
#define NVIC_IRQ7_EXTI1_DISABLE()			(NVIC_ICER0 |= 1<<EXTI1_IRQ)
#define NVIC_IRQ8_EXTI2_DISABLE()			(NVIC_ICER0 |= 1<<EXTI2_IRQ)
#define NVIC_IRQ9_EXTI3_DISABLE()			(NVIC_ICER0 |= 1<<EXTI3_IRQ)
#define NVIC_IRQ10_EXTI4_DISABLE()			(NVIC_ICER0 |= 1<<EXTI4_IRQ)
#define NVIC_IRQ23_EXTI5_9_DISABLE()		(NVIC_ICER0 |= 1<<EXTI5_IRQ)
#define NVIC_IRQ40_EXTI10_15_DISABLE()		(NVIC_ICER1 |= 1<<8)	//40-32

#define NVIC_IRQ37_USART1_ENABLE()			(NVIC_ISER1 |= 1<<(USART1_IRQ-32))
#define NVIC_IRQ38_USART2_ENABLE()			(NVIC_ISER1 |= 1<<(USART2_IRQ-32))
#define NVIC_IRQ39_USART3_ENABLE()			(NVIC_ISER1 |= 1<<(USART3_IRQ-32))

#define NVIC_IRQ37_USART1_DISABLE()			(NVIC_ICER1 |= 1<<(USART1_IRQ-32))
#define NVIC_IRQ38_USART2_DISABLE()			(NVIC_ICER1 |= 1<<(USART2_IRQ-32))
#define NVIC_IRQ39_USART3_DISABLE()			(NVIC_ICER1 |= 1<<(USART3_IRQ-32))

#endif /* STM32F103X8_DEVICEHEADER_H_ */
