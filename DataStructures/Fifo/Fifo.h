/*
 * Fifo.h
 *
 *  Created on: Sep 14, 2021
 *      Author: UNiversaL
 */

#ifndef FIFO_H_
#define FIFO_H_
#define element_type unsigned int
#define width 5
//define buffer
element_type buffer[width];
typedef struct{
	element_type* base;
	element_type* head;
	element_type* tail;
	unsigned int count;
	unsigned int length;
}FIFO_t;
//lifo status
 typedef enum{
	 fifo_no_error=1,fifo_error=-1,fifo_null,fifo_full
 }Fifo_status;

 //prototypes
 Fifo_status Fifo_init(element_type *buffer,FIFO_t* lifo,unsigned int length );
 Fifo_status Fifo_enqueue(element_type *buffer,FIFO_t* lifo,unsigned int item );
 Fifo_status Fifo_dequeue(element_type *buffer,FIFO_t* lifo,unsigned int *item );
void Fifo_print(element_type *buffer,FIFO_t* lifo);


#endif /* FIFO_H_ */
