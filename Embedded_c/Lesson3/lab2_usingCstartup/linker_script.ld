/* linker script for arm cotrex-m3 */

MEMORY{
    flash (rx)  : ORIGIN = 0x08000000, LENGTH = 128k
    SRAM (rwx)  : ORIGIN = 0x20000000, LENGTH = 20k
}
SECTIONS{
    .text : {
        *(.vectos*)
        *(.text*)  /* all .text files */
        E_text = .; 
    }> flash
    .data : {
        S_data = .;
        *(.data)
         E_data = .;
    }> SRAM AT> flash 
       .bss : {
            S_bss = .;
        *(.bss)
        . =  ALIGN(4);
         E_bss = .;
         . =  ALIGN(4);
         . = . + 0x1000; 
         sp = .;
       }>SRAM
}