/*
 * main.c
 *
 *  Created on: Sep 18, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "stdlib.h"
#include "CA.h"
#include "US.h"
#include "DC.h"
extern void (*CA_state)();
void init(){
	CA_state=CA_waiting;
	US_state=US_busy;
	DC_state=DC_idle;
}
void main(){
	init();
	//for(int i=0;i<100;i++){
	while(1){
		US_state();
		CA_state();
		DC_state();
	}

}
