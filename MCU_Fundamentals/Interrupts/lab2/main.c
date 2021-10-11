/*
 * main.c
 *
 *  Created on: Oct 11, 2021
 *      Author: UNiversaL
 */


#include <avr/io.h>
#include <avr/delay.h>
#include <avr/interrupt.h>


//interrupt registers
#define MCUCR    *(unsigned int*)(0x55)
#define MCUCSR    *(unsigned int*)(0x54)
#define GICR      *(unsigned int*)(0x5B) //general interrupt
#define GIFR      *(unsigned int*)(0x5A) //general interrupt flag

//Port D registers
#define  portD_DDR		*((volatile unsigned int *)(0x31))

void enable_interrupts(){
	MCUCR |=1<<0; //interrupt 0 any event
		MCUCR |=0b11<<2; //interrupt 1 raising edge
		MCUCSR |= 0<<6;  //interrupt 2 falling edge
		GICR |=0b111<<5;
		//enable global interrupts
		sei();

}
void init_portD(){
	//set bit 5,6,7 as output
	portD_DDR |=0b111<<5;
}
void delay(){
	for(int i=0;i<5000;i++);
void main(void){
	enable_interrupts();
	init_portD();
	while(1){
		//clear pins
		portD_DDR &=~(0b111<<5);
	}
}
ISR(INT0_vect)
 {
	portD_DDR |=1<<5;
	delay();
 }

ISR(INT1_vect)
 {
	portD_DDR |=1<<6;
	delay();
 }
ISR(INT2_vect)
 {
	portD_DDR |=1<<7;
	delay();
 }
