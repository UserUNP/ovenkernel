#if !defined(__i386__)
#error "(use the -m32 or -fi386 flag) not compiled using elf32 compiler !!"
#endif

#include <stddef.h>

#include "../commonlib/exitcodes.h"
#include "../commonlib/terminal.h"

size_t _bootstrap_main(void)
{
	terminal_init();
	terminal_write("Initializing kernel\n");
	terminal_write("bruhmoner\n");
	return EXIT_OK;
}


void _bootstrap_panic(void)
{
	
}