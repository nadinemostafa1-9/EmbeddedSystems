/*
 * queue.h
 *
 *  Created on: Sep 25, 2021
 *      Author: UNiversaL
 */

#ifndef QUEUE_H_
#define QUEUE_H_

extern struct Sdata;
extern struct Sstudent;
#define DPRINTF(...) fflush(stdin);fflush(stdout);\
						printf(__VA_ARGS__);\
						fflush(stdin);fflush(stdout);
typedef struct{
	struct Sstudent* base;
	struct Sstudent* head;
	struct Sstudent* tail;
	unsigned int count;
	int max;
}FIFO_t;
//lifo status
 typedef enum{
	 fifo_no_error=1,fifo_error=-1,fifo_null,fifo_full
 }Fifo_status;

 //prototypes
 Fifo_status Fifo_init(FIFO_t* fifo );
 Fifo_status Add_student(FIFO_t* fifo,int p);
 Fifo_status Find_by_ID(FIFO_t* fifo,int id);
 Fifo_status Find_by_First(FIFO_t* fifo,char name[]);
 Fifo_status Find_by_courseID(FIFO_t* fifo,int id);
 void Find_count(FIFO_t* fifo);
 Fifo_status delete_student(FIFO_t* fifo,int id);
 Fifo_status update(FIFO_t* fifo,int id);
void Print_ALL(FIFO_t* fifo);

#endif /* QUEUE_H_ */
