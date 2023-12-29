#if !defined(__i386__)
#error "(use the -m32 or -fi386 flag) not compiled using elf32 compiler !!"
#endif

#include <typedefs.h>

#include <exitcodes.h>
#include <console.h>
#include <vgacolor.h>
#include <mem.h>

size_t _bootstrap_main(void)
{
	console_init();
	console_clear();

	console_write("Initializing kernel\n");
	console_write("bruhmoner\n");
	return EXIT_OK;
}


void _bootstrap_panic(void)
{
	console_setcolor(vga_entry_color(VGA_COLOR_BLACK, VGA_COLOR_RED));
	console_write("(kernel panic)\n");
}

void _bootstrap_exitok(void)
{
	console_center_write("(kernel exit ok)\n");
}
