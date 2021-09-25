/*
 * main.c
 *
 *  Created on: Sep 25, 2021
 *      Author: UNiversaL
 */

#include"queue.h"
#include"stdio.h"

FIFO_t fifo;
void main(){
 //init buffer
	 Fifo_init(&fifo);

	int temp;
   char x[20];
	DPRINTF("===============================================\n");
	DPRINTF("Welcome to the student Management System\n");
while(1){
	DPRINTF("===============================================\n");
			DPRINTF("Choose the task that you want to perform\n");
			DPRINTF("1. Add the student Details Manually\n");
			DPRINTF("2. Add the student Details from file\n");
			DPRINTF("3. Find student details by ID\n");
			DPRINTF("4. Find student details by First Name\n");
			DPRINTF("5. Find student details by course ID\n");
			DPRINTF("6. Find total number of students\n");
			DPRINTF("7. Delete the student details by ID\n");
			DPRINTF("8. Update the student details by ID\n");
			DPRINTF("9. Show all students data\n");
			DPRINTF("10. To Exit\n");
			DPRINTF("Enter your choice number :");
			scanf("%d",&temp);
			DPRINTF("===============================================\n");
			switch(temp)
			{
			case 1: Add_student(&fifo,1);
				break;
				case 2: Add_student(&fifo,2);break;
					case 3: DPRINTF("Enter ID:"); scanf("%d",&temp);
					Find_by_ID(&fifo,temp);
					break;
					case 4:DPRINTF("Enter first name:"); scanf("%s",x);
						Find_by_First(&fifo,x);break;
					case 5: DPRINTF("Enter course ID:"); scanf("%d",&temp);
					Find_by_courseID(&fifo,temp);break;
					case 6: Find_count(&fifo);break;
					case 7: DPRINTF("Enter student ID to be deleted:"); scanf("%d",&temp);
					delete_student(&fifo,temp);break;
					case 8: DPRINTF("Enter student ID to be updated:"); scanf("%d",&temp);
						update(&fifo,temp);break;
					case 9: Print_ALL(&fifo);break;
					case 10:exit(1) ;break;
			default:
				DPRINTF("\n invalid entry");break;
			}
}
}
