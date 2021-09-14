/*
 * LIFO.c
 *
 *  Created on: Sep 13, 2021
 *      Author: UNiversaL
 */
#include "LIFO.h"

 Lifo_status Lifo_init(unsigned int *buffer,LIFO_t* lifo ,unsigned int length){
	 //no array was found
	 if(!lifo->base)
		 return Lifo_error;
lifo->base=buffer;
lifo->head=buffer;
lifo->count=0;
lifo->length=length;
return Lifo_no_error;
 }

 Lifo_status Lifo_push(unsigned int *buffer,LIFO_t* lifo,unsigned int item ){
	 if(lifo->count==lifo->length)
		 return Lifo_full;
	 //push item
	 *(lifo->head)=item;
	 lifo->head++;
	 lifo->count++;
	 return Lifo_no_error;

 }

 Lifo_status Lifo_pop(unsigned int *buffer,LIFO_t* lifo,unsigned int *item ){

	if(lifo->count==0)
		return Lifo_error;
	//pop item
	lifo->head--;
	*item= *(lifo->head);
		 lifo->count--;
		 return Lifo_no_error;

 }
 int Lifo_top(unsigned int *buffer,LIFO_t* lifo){

		if(lifo->count==0)
			return Lifo_error;

		lifo->head--;
	 int item=*(lifo->head);
	 lifo->head++;
	 return item;
 }
