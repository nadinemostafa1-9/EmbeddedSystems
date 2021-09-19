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
//int generate_distance(int l,int r);
//pointer to function
void (*ptr)();
void CA_waiting(){
	//state
	curr_state=waiting;
	//action
	speed=0;
	distance=generate_distance(40,60);
	(distance<=threshold)?(ptr=CA_waiting):(ptr=CA_driving);
	printf("CA_waiting: distance=%d speed=%d\n",distance,speed);
}
void CA_driving(){
	//state
	curr_state=driving;
	//action
	speed=30;
	distance=generate_distance(40,60);
	(distance<=threshold)?(ptr=CA_waiting):(ptr=CA_driving);
	printf("CA_driving: distance=%d speed=%d\n",distance,speed);
}
int generate_distance(int l,int r){
		int random;
			random = (rand()%(r-l+1)) + l;
			return random;
}
