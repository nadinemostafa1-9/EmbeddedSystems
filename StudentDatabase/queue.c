/*
 * queue.c
 *
 *  Created on: Sep 25, 2021
 *      Author: UNiversaL
 */

#include "queue.h"
#include "stdio.h"
#include "string.h"
struct Sdata{
	char fname[20];
	char lname[20];
	int id;
	float gpa;
	int courses[10]; //number of available courses is 10
};
struct Sstudent{
	struct Sdata student;
	struct Sstudent* pnext; //pointer to next student
};

 Fifo_status Fifo_init(FIFO_t* fifo){
		 fifo->head=NULL;
		 fifo->tail=NULL;
		 fifo->count=0;
		 fifo->max=50;
		 if(!fifo->base)
				 return fifo_null;
		 else
			 return fifo_no_error;

 }
 Fifo_status Add_student(FIFO_t* fifo,int p){
	 struct Sstudent* last;
	 	struct Sstudent* new;
	 	char temp[20];
	 	if(fifo->count==fifo->max){
	 		DPRINTF("We have reached max number of students.");
	 		return fifo_full;}
	 	new=(struct Sstudent*)malloc(sizeof(struct Sstudent));
	 	 for(int i=0;i<10;i++)
	 		 	    	new->student.courses[i]=0;
	 	//if list is empty
	 	if(fifo->head==NULL){
	             fifo->head=new;
	             fifo->tail=new;
	             new->pnext=NULL;
	 	}
	 	else{
	 		if(fifo->head->pnext==NULL)
	 			fifo->head->pnext=new;
	 		fifo->tail->pnext=new;
	 		new->pnext=NULL;
	 		fifo->tail=new; //point to the new added student
	 	}
	 	//add student data from file
	 	//format
	 	//fname lname id gpa coursesID then 0
	 	struct Sstudent* search=fifo->head;
	 	if(p==2){
	 		FILE *file; int x=0;
	 	    char fnam[20],lnam[20];
	 	    int id,courses[10];
	 	    float gpa;
	 	    for(int i=0;i<10;i++)
	 	    	courses[i]=0;
	 	    file=fopen("data.txt","r");
	 	    fscanf(file, "%s %s %d %f %d %d %d %d %d %d %d %d %d %d"
	 	    		,fnam,lnam,&id,&gpa,&courses[0],&courses[1],&courses[2],&courses[3],&courses[4]
				    ,&courses[5],&courses[6],&courses[7],&courses[8],&courses[9]);
	 	    fclose(file);

	 	   while(search!=NULL){
	 		   if(search->student.id==id)
	 		   {
	 			   printf("this id is already taken!");
	 			   return fifo_error;
	 		   }
	 		   search=search->pnext;
	 	   }
	 	   //else add data to database
	 	  new->student.id=id;
	 	 strcpy(new->student.fname,fnam);
	 	 strcpy(new->student.lname,lnam);
	 	  new->student.gpa=gpa;
	 	  for(int i=0;i<10;i++){
	 		  if(courses[i]==0)
	 			  break;
	 		  new->student.courses[i]=courses[i];
	 	  }

	 	}
	 	else if(p==1) {
	 	DPRINTF("Enter student ID:");
	 	gets(temp);
	 	 while(search!=NULL){
	 		 		   if(search->student.id==atoi(temp))
	 		 		   {
	 		 			   printf("this id is already taken!");
	 		 			   return fifo_error;
	 		 		   }
	 		 		   search=search->pnext;
	 		 	   }
	 	 float d;
	 	new->student.id=atoi(temp);
	 	DPRINTF("Enter student first name:");
	 		gets(new->student.fname);
	 		DPRINTF("Enter student last name:");
	 	    gets(new->student.lname);
	 		DPRINTF("Enter student GPA:");
	 			scanf("%f",&d);
	 			new->student.gpa=d;
	 			DPRINTF("Enter number of courses to enroll in:");
	 			int x; 	scanf("%d",&x);
	 			for(int i=0;i<x;i++){
	 				DPRINTF("Enter course id:");
	 				gets(temp);
	 				if(atoi(temp)>10){
	 					DPRINTF("This course ID is not found"); }
	 				else
	 				 	new->student.courses[i]=atoi(temp);
	 			}
	 	}
	 	fifo->count++;
 }
 Fifo_status Find_by_ID(FIFO_t* fifo,int id){
	 struct Sstudent *temp=fifo->head;
	 while(temp!=NULL){
		 if(temp->student.id==id){
			 printf("\nStudent ID: %d",temp->student.id);
			 printf("\nStudent name: %s %s",temp->student.fname,temp->student.lname);
			 printf("\nStudent GPA: %f",temp->student.gpa);
			 printf("\nStudent registered courses IDs:");
			 for(int i=0;i<10;i++){
				 if(temp->student.courses[i]==0)
					 break;
				 printf(" %d",temp->student.courses[i]);
			 }
			 printf("\n_____________");
			 return fifo_no_error;
		 }
		 temp=temp->pnext;
	 }
	 printf("This ID in not found!\n");
 }
 Fifo_status Find_by_First(FIFO_t* fifo,char name[]){
	 struct Sstudent *temp=fifo->head; int flag=0;
		 while(temp!=NULL){
			 if(!strcmp(temp->student.fname,name)){
				 flag=1; //found
				 printf("\nStudent ID: %d",temp->student.id);
				 printf("\nStudent name: %s %s",temp->student.fname,temp->student.lname);
				 printf("\nStudent GPA: %f",temp->student.gpa);
				 printf("\nStudent registered courses IDs:");
				 for(int i=0;i<10;i++){
					 if(temp->student.courses[i]==0)
						 break;
					 printf(" %d",temp->student.courses[i]);
				 }
				 printf("\n_____________");
			 }
			 temp=temp->pnext;
		 }
		 if(!flag)
		 printf("This first name in not found!\n");
 }
 Fifo_status Find_by_courseID(FIFO_t* fifo,int id){
	 struct Sstudent *temp=fifo->head; int flag=0;
	 	 while(temp!=NULL){
	 		 for(int i=0;i<10;i++){
	 			 if(temp->student.courses[i]==0)
	 				 break;
	 		 if(temp->student.courses[i]==id){
	 			 printf("\nStudent ID: %d",temp->student.id);
	 			 printf("\nStudent name: %s %s",temp->student.fname,temp->student.lname);
	 			 printf("\nStudent GPA: %f",temp->student.gpa);
	 			 printf("\nStudent registered courses IDs:");
	 			 for(int i=0;i<10;i++){
	 				 if(temp->student.courses[i]==0)
	 					 break;
	 				 printf(" %d",temp->student.courses[i]);
	 			 }
	 			 printf("\n_____________");
	 			 flag=1;
	 			 break;
	 		 }
	 		 }
	 		 temp=temp->pnext;
	 	 }
	 	 if(!flag)
	 	 printf("No students registered in this course!\n");
 }
 void Find_count(FIFO_t* fifo){
	 printf("Number of students registered is %d\n",fifo->count);
 }
 Fifo_status delete_student(FIFO_t* fifo,int id){
	 struct Sstudent *temp=fifo->head;
	 struct Sstudent *prev=fifo->head;
	 //delete current head
	 if(temp->student.id==id){
		fifo->head=temp->pnext;
		 			 free(temp);
	 }
	 while(temp!=NULL){
		 if(temp->student.id==id){
			 prev->pnext=temp->pnext;
			 free(temp);
			 printf("Student deleted!");
			 return fifo_no_error;
		 }
		 prev=temp;
		 temp=temp->pnext;
	 }
	 printf("Student id not found!");
 }
 Fifo_status update(FIFO_t* fifo,int id){
	 struct Sstudent *temp=fifo->head; int x;char data[20];
		 while(temp!=NULL){
			 if(temp->student.id==id){
				 printf("\nEnter your selection");
				 DPRINTF("\n1.first name 2. last name 3.GPA 4.registered courses: ");
				 scanf("%d",&x);
				 if(x==1){
					 DPRINTF("Enter new first name:");
					 scanf("%s",data);
					 strcpy(temp->student.fname,data);}
				 else if (x==2){
					 DPRINTF("Enter new last name:");
					 scanf("%s",data);
					 strcpy(temp->student.lname,data);}
				 else if (x==3){
					 DPRINTF("Enter new GPA:");
					scanf("%s",data);
					temp->student.gpa=atof(data);}
				 else if(x==4){
					 DPRINTF("Enter new number of courses:");
					 scanf("%d",&x);
				 for(int i=0;i<x;i++){
					 DPRINTF("Enter course id:");
					 scanf("%s",data);
					 temp->student.courses[i]=atoi(data);
				 }
				 temp->student.courses[x]=0;
				 }
				 printf("\nStudent data updated successfully!");
				 return fifo_no_error;

			 }
			 temp=temp->pnext;
		 }
		 printf("This ID in not found!\n");
 }
void Print_ALL(FIFO_t* fifo){

	 struct Sstudent *temp=fifo->head;
	 if(fifo->count==0)
		 printf("No students registered");
	 else{
		 while(temp!=NULL){
			 printf("\nStudent ID: %d",temp->student.id);
			 printf("\nStudent name: %s %s",temp->student.fname,temp->student.lname);
			 printf("\nStudent GPA: %f",temp->student.gpa);
			 printf("\nStudent registered courses IDs:");
			 for(int i=0;i<10;i++){
				 if(temp->student.courses[i]==0)
				 	 			  break;
			 printf(" %d",temp->student.courses[i]);
			 }
			 printf("\n_____________\n");
			 temp=temp->pnext;
		 }
	 }


}
