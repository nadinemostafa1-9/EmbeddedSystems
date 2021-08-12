/*
 * main.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
void main(){
	float x[2][2],y[2][2];
	printf("enter elements of 1st matrix:\n");
	for(int i=0;i<2;i++){
		for(int j=0;j<2;j++){
			printf("enter a%d%d: ",i+1,j+1);
			fflush(stdin); fflush(stdout);
			scanf("%f",&x[i][j]);
		}
	}
	printf("enter elements of 2nd matrix:\n");
	for(int i=0;i<2;i++){
			for(int j=0;j<2;j++){
				printf("enter b%d%d: ",i+1,j+1);
				fflush(stdin); fflush(stdout);
				scanf("%f",&y[i][j]);
			}
		}
	printf("sum of matrix is :\n");
	for(int i=0;i<2;i++){
				for(int j=0;j<2;j++){
					printf("%f  ",x[i][j]+y[i][j]);
				}
				printf("\n");
			}
}
