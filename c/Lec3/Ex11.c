#include "stdio.h"
void main(){
	char a;
	printf("Enter an alphabet : ");
	fflush(stdin); fflush(stdout);
	scanf("%c",&a);
	if((a>=65 && a<=90) ||( a>=97 && a<=122))
		printf("%c is an alphabet",a);
	else
		printf("%c is not an alphabet",a);

}
