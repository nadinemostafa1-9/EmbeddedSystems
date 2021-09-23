/*
 * main.c
 *
 *  Created on: Sep 22, 2021
 *      Author: UNiversaL
 */
#include <stdint.h>
#include <stdio.h>

#include "driver.h"
#include "Alarm.h"
#include "pressureSensor.h"
int main (){
	GPIO_INITIALIZATION();
	int Pval;
	int threshold=20;
	while (1)
	{
      Pval=getPressureVal();
      if(Pval>threshold){
    	  StartAlarm();
    	  Delay(60);
    	  StopAlarm();
      }
      else //do nothing
    	  ;
      Delay(1000);
	}

}


