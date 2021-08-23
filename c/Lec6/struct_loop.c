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
void print(struct Sstudent x[]){
	for(int i=0;i<5;i++){
	printf("name:%s\n",x[i].name);
	printf("Roll:%d\n",x[i].roll);
	printf("Marks:%d ",x[i].marks);
	}
}
void main(){
	struct Sstudent x[5];
	printf("Enter information of students: \n");
	for(int i=0;i<5;i++){
	printf("enter name: ");
	fflush(stdin); fflush(stdout);
	scanf("%s",&x[i].name);
	printf("enter roll number: ");
		fflush(stdin); fflush(stdout);
		scanf("%d",&x[i].roll);
		printf("enter marks: ");
			fflush(stdin); fflush(stdout);
			scanf("%d",&x[i].marks);
	}
			printf("displaying information:\n");
print(x);
}


