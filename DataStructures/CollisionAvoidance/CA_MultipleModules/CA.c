/*
 * CA.c
 *
 *  Created on: Sep 18, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "stdlib.h"
#include "CA.h"
//variables
int speed=0;
int distance=0;
int threshold=50; //if distance less than or equal threshold stop the car
CA_States curr_state;

//pointer to function
void (*CA_state)();
void CA_waiting(){
	//state
	curr_state=waiting;

	printf("CA_waiting: distance=%d speed=%d\n",distance,speed);
	speed=0;
	DC_set_speed(speed);
}
void CA_driving(){
	//state
	curr_state=driving;
	printf("CA_driving: distance=%d speed=%d\n",distance,speed);
	speed=30;
	DC_set_speed(speed);
}
void US_set_distance(int d){
	distance=d;
	(distance<=threshold)?(CA_state=CA_waiting):(CA_state=CA_driving);
	printf("US-----distance = %d------>CA\n",distance);
}
