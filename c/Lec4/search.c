/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
void main(){
	int n;
	printf("enter number of elements: ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&n);
	int a[50];
	for(int i=0;i<n;i++)
			scanf("%d",&a[i]);
	int x;
	printf("enter element to be searched: ");
	fflush(stdin); fflush(stdout);
		scanf("%d",&x);
	for(int i=0;i<n;i++){
		if(a[i]==x)
		printf("found at location: %d  ",i+1);
			}
}
