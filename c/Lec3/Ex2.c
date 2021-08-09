/*
 * main.c
 *
 *  Created on: Aug 6, 2021
 *      Author: Nadine
 */
#include "stdio.h"
void main(){
	int x;
	printf("Enter an integer: ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&x);
	printf("You Entered:%d",x);
}
