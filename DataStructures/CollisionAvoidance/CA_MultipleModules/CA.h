/*
 * CA.h
 *
 *  Created on: Sep 18, 2021
 *      Author: UNiversaL
 */

#ifndef CA_H_
#define CA_H_
#include "stdio.h"
#include "stdlib.h"
//define states
typedef enum {
	waiting,driving
}CA_States;

//Apis
void CA_waiting();
void CA_driving();
void US_set_distance(int d);
#endif /* CA_H_ */
