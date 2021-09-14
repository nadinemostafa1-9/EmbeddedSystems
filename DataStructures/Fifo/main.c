/*
 * main.c
 *
 *  Created on: Sep 14, 2021
 *      Author: UNiversaL
 */


#include "stdio.h"
#include "Fifo.h"
element_type buffer1[5];

void main(){
	element_type item;
	FIFO_t uart_fifo;
	Fifo_init(buffer1,&uart_fifo,5);
	for(int i=0;i<6;i++){
		Fifo_enqueue(buffer1,&uart_fifo,i);
	}
	Fifo_dequeue(buffer1,&uart_fifo,&item);
	printf("%d  \n",item);
	Fifo_dequeue(buffer1,&uart_fifo,&item);
	Fifo_enqueue(buffer1,&uart_fifo,10);
	Fifo_enqueue(buffer1,&uart_fifo,11);
Fifo_print(buffer1,&uart_fifo);
	while(Fifo_dequeue(buffer1,&uart_fifo,&item)!=fifo_error){
			printf("%d  \n",item);
		}

}
