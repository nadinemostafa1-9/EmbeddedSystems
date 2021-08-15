/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "math.h"
void prime(int x,int y){
	int flag=0;
	for(int i=x+1;i<(y);i++){
		for (int j = 2; j <= sqrt(i); j++){
			if(i%j==0){
				flag=1;
				break; }
		}
		if(flag==0)
			printf("%d ",i);
		flag=0;
	}
}
void main(){
	int a,b;
	printf("Enter two numbers: ");
	fflush(stdin); fflush(stdout);
	scanf("%d %d",&a,&b);
	printf("prime numbers between %d and %d are : ",a,b);
	prime(a,b);

}
