/*
 * m.c
 *
 *  Created on: Aug 12, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "string.h"

struct Sstudent{
	char name[50];
	int roll; int marks;
};
void print(struct Sstudent x){
	printf("name:%s\n",x.name);
	printf("Roll:%d\n",x.roll);
	printf("Marks:%d ",x.marks);

}
void main(){
	struct Sstudent x;
	printf("Enter information: \n");
	printf("enter name: ");
	fflush(stdin); fflush(stdout);
	scanf("%s",&x.name);
	printf("enter roll number: ");
		fflush(stdin); fflush(stdout);
		scanf("%d",&x.roll);
		printf("enter marks: ");
			fflush(stdin); fflush(stdout);
			scanf("%d",&x.marks);
			printf("displaying information:\n");
print(x);
}

