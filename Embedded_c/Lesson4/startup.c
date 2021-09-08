#include "Platform_Types.h"
extern uint32_t S_data;
extern uint32_t E_data;
extern unsigned S_bss;
extern uint32_t E_bss;
extern uint32_t E_text;
extern void main(void); /* we will call main fun. so it has be defined as extern to avoid compile error */
void Reset_Handler();
 void Default_Handler(void)
{
	Reset_Handler();
}

/*alias to make prototype without definition alias to default_handler */
/* weak to enable defining the fun. more than once */
void NMI_Handler(void) __attribute__ ((weak,alias ("Default_Handler")));;
void H_fault_Handler(void) __attribute__ ((weak,alias ("Default_Handler")));;

static unsigned long sp[256]; /*define sp as global uninitialzed array of size 256*4=1024 */
 void (* const global_array[])() __attribute__((section(".vectors")))={
(void (*)())(sp+ sizeof(sp)),
&Reset_Handler,
&NMI_Handler ,
&H_fault_Handler 
 };


void Reset_Handler (void)
{
	//copy data from ROM to RAM
	uint32_t DATA_size = (unsigned char*)&E_data - (unsigned char*)&S_data ;
	unsigned char* P_src = (unsigned char*)&E_text ;
	unsigned char* P_dst = (unsigned char*)&S_data ;
	for (int i=0 ;i < DATA_size ;i++ ) {
	*((unsigned char*) P_dst++) = *((unsigned char*) P_src++) ;
	}
		//init .bss with zero
	uint32_t bss_size = (unsigned char*)&E_bss - (unsigned char*)&S_bss ;
	P_dst = (unsigned char*) &S_bss ;
	for (int i=0 ;i<bss_size ;i++ ){
	*((unsigned char*) P_dst++) = (unsigned char)0 ;
	}

	// call main
	main();
}

