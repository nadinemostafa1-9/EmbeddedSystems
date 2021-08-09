#include "stdio.h"
void main(){
	int a;
	printf("Enter a number to check : ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&a);
if(a%2==0)
	printf("%d is even",a);
else
	printf("%d is odd",a);

}
