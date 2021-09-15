/*
 * func.c

 *
 *  Created on: Sep 14, 2021
 *      Author: UNiversaL
 */
#include "stdio.h"
#include "stdlib.h"
#include "conio.h"
#include "string.h"
#include "func.h"

struct Sstudent *head=NULL; //pointer to first student

void AddStudent(){
	struct Sstudent* last;
	struct Sstudent* new;
	char temp[20];
	new=(struct Sstudent*)malloc(sizeof(struct Sstudent));
	//if list is empty
	if(head==NULL)
            head=new;
	else{
		last=head;
		while(last->pnext)
			last=last->pnext;
		last->pnext=new;
	}
	//add student data
	DPRINTF("Enter student ID:");
	gets(temp);
	new->student.id=atoi(temp);
	DPRINTF("\nEnter student name:");
		gets(new->student.name);
		DPRINTF("\nEnter student height:");
			gets(temp);
			new->student.height=atof(temp);
			//set pointer to null
			new->pnext=NULL;

}
int delete_student(){
struct Sstudent* curr=head;
struct Sstudent* prev=NULL;
int id;
if(curr){
	DPRINTF("Enter ID of student to be deleted: ");
	scanf("%d",&id);
	while(curr->student.id!=id && curr->pnext!=NULL){
		prev=curr;
		curr=curr->pnext;
	}
	if(curr->student.id==id){
		if(curr==head)
			head=curr->pnext;
		else
		prev->pnext=curr->pnext;
		free(curr);
		DPRINTF("student deleted from database\n");
	return 1;}
	else{
		DPRINTF("There is no such ID\n");
	return 0;
	}
}
else{
	DPRINTF("This list is empty\n");
	return 0;
}
}
void view_all(){
	struct Sstudent* curr=head;
	int count=1;
	if(curr){
	while(curr!=NULL){
		DPRINTF("---------------------\n");
		DPRINTF("record number %d\n",count++);
		DPRINTF("Student name: %s\n",curr->student.name);
		DPRINTF("Student ID: %d\n",curr->student.id);
		DPRINTF("Student height: %f\n",curr->student.height);
		DPRINTF("---------------------\n");
		curr=curr->pnext;
	} }
	else
		DPRINTF("This list is empty");
}

void DeleteAll(){
	struct Sstudent* curr=head;
	struct Sstudent* temp=NULL;
	while(curr){
			temp=curr;
			free(temp);
			curr=curr->pnext;
		}
	head=NULL;
}
int GetNth(int index){
	int count=1;
	struct Sstudent* curr=head;
	while(curr){
		if(index==count){
			DPRINTF("---------------------\n");
				DPRINTF("record number %d\n",count++);
				DPRINTF("Student name: %s\n",curr->student.name);
				DPRINTF("Student ID: %d\n",curr->student.id);
				DPRINTF("Student height: %f\n",curr->student.height);
				DPRINTF("---------------------\n");
				return 1;
		}
		else{
			count++;
			curr=curr->pnext;
		}
	}
	return 0;
}

int getCount(){
	int count=0;
		struct Sstudent* curr=head;
		while(curr){
			count++;
			curr=curr->pnext;
		}
		return count;
}
void Reverse(){
	struct Sstudent* curr=head;
	struct Sstudent* next=curr->pnext;
	struct Sstudent* prev=NULL;
	while(curr){

		next = curr->pnext;
		curr->pnext = prev;
		prev = curr ;
		curr = next ;
	}
	head=prev;
}
