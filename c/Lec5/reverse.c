/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "string.h"
char reverse(char c[],int x){
	if(x==0){
		printf("%c",c[0]);
		return c[0];}
	else{
		printf("%c",c[x]);
		x--;
		reverse(c,x);
		return c[x];
	}
}
void main(){
	char c[100];
	printf("Enter a sentence: ");
	fflush(stdin); fflush(stdout);
	gets(c);
	reverse(c,strlen(c));
}
