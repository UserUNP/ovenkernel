#include "./terminal.h"
#include "./strutils.h"
#include "./vgacolor.h"

size_t terminal_row;
size_t terminal_column;
uint8_t terminal_color;
uint16_t *terminal_buffer;


void terminal_init(void)
{
	terminal_row = 0;
	terminal_column = 0;
	terminal_buffer = VGA_VIDMEM;
	terminal_color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
}

void terminal_clear(void)
{
	for (size_t y = 0; y < VGA_HEIGHT; y++) {
		for (size_t x = 0; x < VGA_WIDTH; x++) {
			terminal_buffer[y * VGA_WIDTH + x] = vga_entry(' ', terminal_color);
		}
	}
}

void terminal_setcolor(uint8_t color)
{
	terminal_color = color;
}

void terminal_putentryat(char ch, uint8_t color, size_t x, size_t y)
{
	terminal_buffer[y * VGA_WIDTH + x] = vga_entry(ch, color);
}

void terminal_putchar(char _ch)
{
	char ch = _ch;
	if (_ch == "\n"[0]) {
		terminal_row++;
		ch = 0;
	}
	terminal_putentryat(ch, terminal_color, terminal_column, terminal_row);
	if (++terminal_column == VGA_WIDTH) {
		terminal_column = 0;
		if (++terminal_row == VGA_HEIGHT) terminal_row = 0;
	}
	if (ch == 0) terminal_column = 0;
}

void terminal_size_write(const char *str, size_t size)
{
	for (size_t i = 0; i < size; i++) terminal_putchar(str[i]);
}

void terminal_moveto(size_t x, size_t y)
{
	terminal_column = x;
	terminal_row = y;
}

void terminal_write(const char *str)
{
	terminal_size_write(str, strlen(str));
}

void terminal_center_write(const char *str)
{
	char *horizontal_lines = repeatchar("!", strlen(str));
	terminal_moveto(VGA_WIDTH/2 - strlen(str), VGA_HEIGHT/2-1); terminal_write(horizontal_lines);
	terminal_moveto(VGA_WIDTH/2 - strlen(str), VGA_HEIGHT/2+1); terminal_write(horizontal_lines);
	terminal_moveto(VGA_WIDTH/2 - strlen(str), VGA_HEIGHT/2); terminal_write(str);
}
