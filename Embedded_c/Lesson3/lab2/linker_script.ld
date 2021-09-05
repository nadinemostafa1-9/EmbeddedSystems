/* linker script for arm cotrex-m3 */

MEMORY{
    flash (rx)  : ORIGIN = 0x08000000, LENGTH = 128k
    SRAM (rwx)  : ORIGIN = 0x20000000, LENGTH = 20k
}
SECTIONS{
    .text : {
        *(.vectos*)
        *(.text*)  /* all .text files */
    }> flash
    .data : {
        *(.data)
    }> flash
       .bss : {
        *(.bss)
       }>SRAM
}