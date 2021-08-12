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
	int a[50],b[50];
	for(int i=0;i<n;i++){
			scanf("%d",&a[i]);
			b[i]=a[i];
	}
	int x,y;
	printf("enter element to be inserted: ");
	fflush(stdin); fflush(stdout);
		scanf("%d",&x);
		printf("enter position: ");
			fflush(stdin); fflush(stdout);
				scanf("%d",&y);
				y-=1;
	for(int i=0;i<n+1;i++){
		if(i==y)
			a[i]=x;
		else if(i>y){
			a[i]=b[i-1];
		}
		printf("%d  ",a[i]);
			}

}
