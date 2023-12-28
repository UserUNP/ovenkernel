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
	terminal_init();
	terminal_clear();

	terminal_write("Initializing kernel\n");
	terminal_write("bruhmoner\n");
	return EXIT_OK;
}


void _bootstrap_panic(void)
{
	terminal_setcolor(vga_entry_color(VGA_COLOR_BLACK, VGA_COLOR_RED));
	terminal_center_write("(kernel panic)\n");
}

void _bootstrap_exitok(void)
{
	terminal_center_write("(kernel exit ok)\n");
}
