/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
void main(){
	int x,y;
	printf("enter number of rows and columns: ");
	fflush(stdin); fflush(stdout);
	scanf("%d %d",&x,&y);
	float a[10][10];
	for(int i=0;i<x;i++){
		for(int j=0;j<y;j++){
			printf("enter element a%d%d: ",i+1,j+1);
			fflush(stdin); fflush(stdout);
			scanf("%f",&a[i][j]);
			 }
	}
	printf("Entered matrix:\n");
	for(int i=0;i<x;i++){
			for(int j=0;j<y;j++){
				printf("%f  ",a[i][j]);
			}
			printf("\n");
	}
	printf("Transpose of a matrix:\n");
	for(int i=0;i<x;i++){
			for(int j=0;j<y;j++){
				printf("%f  ",a[j][i]);
			}
			printf("\n");
	}

}
