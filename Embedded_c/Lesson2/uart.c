#include "uart.h"
#define UARTDR *((volatile unsigned int* const)((unsigned int*)0x101f1000))
void Send_string(unsigned char *data){
    while(*data !='\0'){
UARTDR=(unsigned int)(*data);
data++;
    }
}