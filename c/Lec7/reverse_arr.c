/*
 * main.c
 *
 *  Created on: Aug 23, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "string.h"

void main(){
	int str[10],s;
	printf("enter number of elements: ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&s);
	for(int i=0;i<s;i++){
		printf("enter element %d:",i);
		fflush(stdin); fflush(stdout);
		scanf("%d",&str[i]);
	}
	int *p=str+s-1;
	printf("reverse: ");
	for(int i=0;i<s;i++){
		printf("%d ",*p);
		p--;
	}

}
