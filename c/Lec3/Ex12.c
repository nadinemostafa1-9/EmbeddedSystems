#include "stdio.h"
void main(){
	int a,res=1;
	printf("Enter a number : ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&a);
	if(a<0)
		printf("Factorial of a negative number doesn`t exist");
	else if(a==0)
		printf("Factorial of %d is 1",a);
		else{
		for(int i=a;i>0;i--)
			res*=i;
		printf("Factorial of %d is %d",a,res);
	}

}
