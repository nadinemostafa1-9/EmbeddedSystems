/* linker script for arm cotrex-m3 */

MEMORY{
    flash (rx)  : ORIGIN = 0x00000000, LENGTH = 512M
    SRAM (rwx)  : ORIGIN = 0x20000000, LENGTH = 512M
}
SECTIONS{
    .text : {
        *(.vectos*)
        *(.text*)  /* all .text files */
         *(.rodata)
        E_text = .; 
    }> flash
    .data : {
        S_data = .;
        *(.data)
         . =  ALIGN(4);
         E_data = .;
    }> SRAM AT> flash 
       .bss : {
            S_bss = .;
        *(.bss)
        . =  ALIGN(4);
         E_bss = .;
       }>SRAM
}