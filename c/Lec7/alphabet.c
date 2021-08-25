/*
 * main.c
 *
 *  Created on: Aug 23, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "string.h"

void main(){
	char alphabet='A';
	char *p=&alphabet;
	for(int i=0;i<26;i++){
	printf("%c ",*p);
	alphabet++;
	}

}
