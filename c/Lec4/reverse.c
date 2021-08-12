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
		int t=0;
		for(int i=0;i<100;i++){
			if(n[i]!=0)
				t++;
			else if(n[i]==0)
				break;
		}
		printf("Reverse of  string: ");
	for(int i=t;i>=0;i--){
		printf("%c",n[i]);	}

}
