/*
 * DC.c
 *
 *  Created on: Sep 19, 2021
 *      Author: UNiversaL
 */


#include "stdio.h"
#include "stdlib.h"
#include "DC.h"

int DC_speed=0;
void (*DC_state)();

void DC_set_speed(int speed){
	DC_speed=speed;
	printf("CA-----speed = %d------>DC\n", DC_speed);
}
void DC_idle()
{

	DC_state = DC_busy;
	printf("DC_idle state: speed = %d\n", DC_speed);
}

void DC_busy()
{

	DC_state = DC_busy;
	printf("DC_busy state: speed = %d\n", DC_speed);
}
