/*
 * LIFO.h
 *
 *  Created on: Sep 13, 2021
 *      Author: UNiversaL
 */

#ifndef LIFO_H_
#define LIFO_H_
//define a stuct for lifo to store int only
typedef struct{
	unsigned int* base;
	unsigned int* head;
	unsigned int count;
	unsigned int length;
}LIFO_t;
//lifo status
 typedef enum{
	 Lifo_no_error=1,Lifo_error=-1,Lifo_full
 }Lifo_status;

 //prototypes
 //init new lifo
 Lifo_status Lifo_init(unsigned int *buffer,LIFO_t* lifo,unsigned int length );

 Lifo_status Lifo_push(unsigned int *buffer,LIFO_t* lifo,unsigned int item );

 Lifo_status Lifo_pop(unsigned int *buffer,LIFO_t* lifo,unsigned int *item );
 int Lifo_top(unsigned int *buffer,LIFO_t* lifo);
#endif /* LIFO_H_ */
