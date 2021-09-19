/*
 * US.c
 *
 *  Created on: Sep 19, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "stdlib.h"
#include "US.h"

int US_speed = 0;
int US_distance = 0;
int US_threshold = 50;


void (*US_state)();
void US_busy(){
	US_distance = ((rand() % 11) + 45);
		printf("US_waiting state: distance = %d\n", US_distance);
		US_set_distance(US_distance);
		US_state =US_busy;
		return ;

}
