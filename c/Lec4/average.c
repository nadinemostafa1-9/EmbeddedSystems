/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
void main(){
	int n;
	float sum=0;
	printf("enter number of items:");
	fflush(stdin); fflush(stdout);
	scanf("%d",&n);
	float x[100];
	for(int i=0;i<n;i++){
			printf("%d. enter number: ",i+1);
			fflush(stdin); fflush(stdout);
			scanf("%f",&x[i]);
			sum+=x[i];
	}
	printf("Average=%f",sum/n);

}
