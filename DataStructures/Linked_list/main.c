/*
 * main.c
 *
 *  Created on: Sep 14, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "stdlib.h"
#include "conio.h"
#include "string.h"
#include "func.h"
void main()
{
	 char option[10];
	 int index;
	while(1)
	 {
		DPRINTF("=================");
		DPRINTF("\n  Choose on of the following Options \n");
		DPRINTF("\n 1: Add Student ");
		DPRINTF("\n 2: Delete Student ");
		DPRINTF("\n 3: View Students ");
		DPRINTF("\n 4: DeleteAll ");
		DPRINTF("\n 5: Student Data by index ");
		DPRINTF("\n 6: Get length of list ");
		DPRINTF("\n 7: Reverse List of Students");
		DPRINTF("\n Enter Option Number: ");
		gets(option);

	switch(atoi(option))
	  {
		case 1:
		  AddStudent();
		  break ;
		case 2:
		  delete_student();
		  break ;
		case 3:
			view_all();
		  break ;
		case 4:
		  DeleteAll();
		  break;
		case 5:
		  DPRINTF("\nEnter required index=");
		  scanf("%d",&index);
		  GetNth(index);
		  break ;
		case 6:
			DPRINTF("\n Number of students in database = %d\n",getCount());
		  break;
		case 7:
			Reverse();
			break;
		default:
		  DPRINTF("\n Wrong option ");
		  break ;
	  }
	}

}
