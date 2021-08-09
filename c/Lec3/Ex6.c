#include "stdio.h"
void main(){
	int a ,b;
	printf("Enter value of a : ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&a);
	printf("Enter value of b : ");
		fflush(stdin); fflush(stdout);
		scanf("%d",&b);
		int temp=a;
		a=b; b=temp;
	printf("after swapping value of a=%d and b=%d",a,b);

}
