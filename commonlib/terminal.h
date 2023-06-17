#include <typedefs.h>

#define VGA_WIDTH 80
#define VGA_HEIGHT 26
#define VGA_VIDMEM ((uint16_t*)0xB8000)

void terminal_init(void);
void terminal_clear(void);
void terminal_setcolor(uint8_t color);
void terminal_putentryat(char c, uint8_t color, size_t x, size_t y);
void terminal_putchar(char c);
void terminal_size_write(const char *str, size_t size);
void terminal_moveto(size_t x, size_t y);
void terminal_write(const char *str);
void terminal_center_write(const char *str);
