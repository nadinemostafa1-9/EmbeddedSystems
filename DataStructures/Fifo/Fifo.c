/*
 * Fifo.c
 *
 *  Created on: Sep 14, 2021
 *      Author: UNiversaL
 */

#include "Fifo.h"
#include"stdio.h"
 Fifo_status Fifo_init(element_type *buffer,FIFO_t* fifo ,unsigned int length){
	 fifo->base=buffer;
	 fifo->head=buffer;
	 fifo->tail=buffer;
	 fifo->count=0;
	 fifo->length=length;
	 if(!fifo->base)
			 return fifo_null;
	 else
		 return fifo_no_error;
 }

 Fifo_status Fifo_enqueue(element_type *buffer,FIFO_t* fifo,unsigned int item ){
	 if(!fifo->base || !fifo->tail)
				 return fifo_null;
	 if(fifo->count==fifo->length){
		 printf("Fifo is full\n");
		 return fifo_full;}
	 //enqueue item
	 *(fifo->tail)=item;
	 fifo->count++;
	 if(fifo->tail+1==fifo->base+fifo->length)
		fifo->tail=fifo->base;
	 else
		 fifo->tail++;
	 return fifo_no_error;


 }

 Fifo_status Fifo_dequeue(element_type *buffer,FIFO_t* fifo,unsigned int *item ){

	if(fifo->count==0)
		return fifo_error;
	//dequeue item
	*item= *(fifo->head);
		 fifo->count--;
		 if(fifo->head+1==fifo->base+fifo->length)
			 fifo->head=fifo->base;
		 else
			 fifo->head++;
		 return fifo_no_error;

 }
 void Fifo_print(element_type *buffer,FIFO_t* fifo){
	 element_type *temp=fifo->head;
	 if(fifo->count==0)
		 printf("fifo is empty");
	 else{
		 for(int i=0;i<fifo->count;i++){
			 printf("print value: %d \n",*temp);
			 if(temp+1==(fifo->base+fifo->length))
temp=fifo->base;
			 else temp++;

		 }
	 }
 }

