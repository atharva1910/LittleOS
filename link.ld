ENTRY (loader)          /* Name of the entry lable */

SECTIONS {
    . = 0x00100000;     /* load at 1MB */
	
	.text ALIGN(0x1000):
    {
          *(.text)
    }

    .rodata ALIGN(0x1000):
    {      /*align at 4kb */
            *(.rodata*)
    }

    .data ALIGN(0x1000):
    {        /*data section from file */
          *(.data)
    }

    .bss ALIGN(0x1000):
    {            /* all common and bss section from file*/
         *(COMMON)
         *(.bss)
    }
}


