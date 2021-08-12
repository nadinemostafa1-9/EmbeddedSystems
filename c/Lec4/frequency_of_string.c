/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
void main(){
	char n[100];
	printf("enter a string: ");
	fflush(stdin); fflush(stdout);
	gets(n);
	char a;
	printf("enter a character to find frequency: ");
		fflush(stdin); fflush(stdout);
		scanf("%c",&a);
		int t=0;
	for(int i=0;i<sizeof(n);i++){
		if(n[i]==a)
			t++;
	}
	printf("Frequency of %c is %d ",a,t);

}
