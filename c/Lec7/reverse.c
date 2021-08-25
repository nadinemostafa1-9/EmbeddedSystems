/*
 * main.c
 *
 *  Created on: Aug 23, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "string.h"

void main(){
	char str[100];
	printf("enter a string: ");
	fflush(stdin); fflush(stdout);
	scanf("%s",str);
	int s=strlen(str);
	char *p=str+s-1;
	printf("reverse of string: ");
	for(int i=0;i<strlen(str);i++){
	printf("%c",*p);
	p--;
	}

}
