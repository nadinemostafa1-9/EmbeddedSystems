/*
 * Alarm.c
 *
 *  Created on: Sep 23, 2021
 *      Author: UNiversaL
 */

#include "driver.h"

 void StartAlarm(){
	 Set_Alarm_actuator(1);
 }

void StopAlarm(){
	Set_Alarm_actuator(0);
}
