/*
 * main.c
 *
 *  Created on: Aug 23, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "string.h"
struct Semployee{
	char name[10];
	int id;
};
struct Semployee (*(* p)[]);
void main(){
	struct Semployee new={"ahmed",12};
	struct Semployee (*arr[])={&new};
	p=&arr;
		printf("Name:%s\n",**(p));
		printf("ID  :%d",(*(*p))->id);


}
