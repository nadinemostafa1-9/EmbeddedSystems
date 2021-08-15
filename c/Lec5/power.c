/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
int power(int x,int y){
static int i=0;
static int m=1;
if(i==y)
	return x;
m*=x;
i++;
power(x,y);
return m;

}
void main(){
	int x,y;
	printf("Enter base number ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&x);
	printf("Enter power number ");
		fflush(stdin); fflush(stdout);
		scanf("%d",&y);
		printf("%d^%d = %d",x,y,power(x,y));
}


