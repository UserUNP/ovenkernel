#include <console.h>
#include <strutils.h>
#include <vgacolor.h>

size_t console_row;
size_t console_col;
uint8_t console_color;
uint16_t *console_buffer;

void console_init(void)
{
	console_row = 0;
	console_col = 0;
	console_buffer = VGA_VIDMEM;
	console_color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
}

void console_clear(void)
{
	for (size_t y = 0; y < VGA_HEIGHT; y++) for (size_t x = 0; x < VGA_WIDTH; x++)
	{
		console_buffer[y * VGA_WIDTH + x] = vga_entry(' ', console_color);
	}
}

void console_setcolor(uint8_t color)
{
	console_color = color;
}

void console_putentryat(char ch, uint8_t color, size_t x, size_t y)
{
	console_buffer[y * VGA_WIDTH + x] = vga_entry(ch, color);
}

void console_putchar(char _ch)
{
	char ch = _ch;
	if (_ch == "\n"[0]) {
		console_row++;
		ch = 0;
	}
	console_putentryat(ch, console_color, console_col, console_row);
	if (++console_col == VGA_WIDTH) {
		console_col = 0;
		if (++console_row == VGA_HEIGHT) console_row = 0;
	}
	if (ch == 0) console_col = 0;
}

void console_size_write(const char *str, size_t size)
{
	for (size_t i = 0; i < size; i++) console_putchar(str[i]);
}

void console_moveto(size_t x, size_t y)
{
	console_col = x;
	console_row = y;
}

void console_write(const char *str)
{
	console_size_write(str, strlen(str));
}

void console_center_write(const char *str)
{
	char *horizontal_lines = repeatchar("!", strlen(str));
	console_moveto(VGA_WIDTH/2 - strlen(str), VGA_HEIGHT/2-1); console_write(horizontal_lines);
	console_moveto(VGA_WIDTH/2 - strlen(str), VGA_HEIGHT/2+1); console_write(horizontal_lines);
	console_moveto(VGA_WIDTH/2 - strlen(str), VGA_HEIGHT/2); console_write(str);
}
