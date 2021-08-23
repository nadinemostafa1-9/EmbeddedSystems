/*
 * m.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "string.h"

struct Scomplex{
	float r;
	float img;
};
void add(struct Scomplex x,struct Scomplex y){
float real=x.r+y.r;
float img=x.img+y.img;
printf("%.2f +%.2fi",real,img);

}
void main(){
	struct Scomplex x,y;
	printf("Enter 1st complex number:");
	fflush(stdin); fflush(stdout);
	scanf("%f %f",&x.r,&x.img);
		printf("Enter 2nd complex number:");
		fflush(stdin); fflush(stdout);
		scanf("%f %f",&y.r,&y.img);
			printf("sum =");
add(x,y);
}

