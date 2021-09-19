/*
 * main.c
 *
 *  Created on: Sep 18, 2021
 *      Author: UNiversaL
 */

#include "stdio.h"
#include "stdlib.h"
#include "CA.h"
extern void (*ptr)();
void init(){
	ptr=CA_waiting;
}
void main(){
	init();
	//for(int i=0;i<100;i++){
	while(1){
		ptr();
	}

}
