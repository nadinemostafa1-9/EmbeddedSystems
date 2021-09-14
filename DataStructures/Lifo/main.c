/*
 * main.c
 *
 *  Created on: Sep 13, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "LIFO.h"
unsigned int buffer1[5];

void main(){
	unsigned int item;
	LIFO_t uart_lifo;
	Lifo_init(buffer1,&uart_lifo,5);
	for(int i=0;i<5;i++){
		Lifo_push(buffer1,&uart_lifo,i);
	}
	for(int i=0;i<5;i++){
		printf("%d  ",Lifo_top(buffer1,&uart_lifo));
			Lifo_pop(buffer1,&uart_lifo,&item);
			printf("%d  \n",item);
		}

}


