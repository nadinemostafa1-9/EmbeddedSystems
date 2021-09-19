/*
 * DC.h
 *
 *  Created on: Sep 19, 2021
 *      Author: UNiversaL
 */

#ifndef DC_H_
#define DC_H_

#include "stdio.h"
#include "stdlib.h"

//Apis
void DC_set_speed(int speed);
void DC_idle();
void DC_busy();
extern void (*DC_state)();
#endif /* DC_H_ */
