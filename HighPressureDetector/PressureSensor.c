/*
 * PressureSensore.c
 *
 *  Created on: Sep 22, 2021
 *      Author: UNiversaL
 */

#include "driver.h"
#include "PressureSensor.h"

int getPressureVal(){
	return (GPIOA_IDR & 0xFF);
}

