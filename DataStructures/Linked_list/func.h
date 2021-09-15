/*
 * func.h
 *
 *  Created on: Sep 14, 2021
 *      Author: UNiversaL
 */

#ifndef FUNC_H_
#define FUNC_H_
#define DPRINTF(...) {fflush(stdin);fflush(stdout);\
						printf(__VA_ARGS__);\
						fflush(stdin);fflush(stdout);\
}
struct Sdata{
	int id;
	char name[20];
	float height;
};

struct Sstudent{
	struct Sdata student;
	struct Sstudent* pnext; //pointer to next student
};

//Prototypes
void AddStudent();
int delete_student();
void DeleteAll();
void view_all();
int GetNth(int index);
int getCount();
void Reverse();
#endif /* FUNC_H_ */
