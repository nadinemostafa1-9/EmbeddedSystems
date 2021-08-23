/*
 * m.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "string.h"

struct Scalc{
	int feet;
	float inches;
};
void add(struct Scalc x,struct Scalc y){
float s=x.inches+y.inches; float rem;
if(s>=12)
rem=s-12;
int q=s/12;
int sumf=x.feet+y.feet+q;
printf("%d' %.2f\"",sumf,rem);

}
void main(){
	struct Scalc x,y;
	printf("Enter information for 1st distance: \n");
	printf("enter feet: ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&x.feet);
	printf("enter inches: ");
		fflush(stdin); fflush(stdout);
		scanf("%f",&x.inches);
		printf("Enter information for 2nd distance: \n");
		printf("enter feet: ");
		fflush(stdin); fflush(stdout);
		scanf("%d",&y.feet);
		printf("enter inches: ");
			fflush(stdin); fflush(stdout);
			scanf("%f",&y.inches);
			printf("sum of distances=");
add(x,y);
}

