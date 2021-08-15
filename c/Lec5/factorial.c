/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "math.h"
int fact(int x){
	static int m=1;
	if(x==0)
		return 1;
       m*=x;
	fact(--x);
	return m;
}
void main(){
	int a;
	printf("Enter a positive number: ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&a);
	printf("Factorial of %d = %d ",a,fact(a));

}
