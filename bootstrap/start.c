#if !defined(__i386__)
#error "(use the -m32 or -fi386 flag) not compiled using elf32 compiler !!"
#endif

#include <typedefs.h>

#include <exitcodes.h>
#include <terminal.h>
#include <mem.h>

size_t _bootstrap_main(void)
{
	terminal_init();
	memcpy(VGA_VIDMEM, (void *)0, VGA_WIDTH*VGA_HEIGHT); // memcpy test
	terminal_clear(); // comment out to see memcpy test

	terminal_write("Initializing kernel\n");
	terminal_write("bruhmoner\n");
	return EXIT_OK;
}


void _bootstrap_panic(void)
{
	terminal_center_write("(kernel panic)\n");
}

void _bootstrap_exitok(void)
{
	terminal_center_write("(kernel exit ok)\n");
}
