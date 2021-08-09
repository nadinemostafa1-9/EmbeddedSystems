#include "stdio.h"
void main(){
	char a;
	float x,y;
	printf("Enter an operator : ");
	fflush(stdin); fflush(stdout);
	scanf("%c",&a);
	printf("Enter two numbers: ");
		fflush(stdin); fflush(stdout);
		scanf("%f %f",&x,&y);
	if(a=='+')
		printf("%f %c %f = %f",x,a,y,x+y);
	else if(a=='-')
				printf("%f %c %f = %f",x,a,y,x-y);
	else if(a=='*')
			printf("%f %c %f = %f",x,a,y,x*y);
	else
		printf("%f %c %f = %f",x,a,y,x/y);
	}
