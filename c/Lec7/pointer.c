/*
 * main.c
 *
 *  Created on: Aug 23, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "string.h"

void main(){
	int m=29;
	printf("address of m is %p value of m is %d \n",&m,m);
	int *p=&m;
	printf("address of p is %p value of p is %d \n",p,*p);
	m=34;
	printf("address of m is %p value of m is %d \n",&m,m);
	*p=7;
	printf("address of p is %p value of p is %d \n",p,*p);

}
