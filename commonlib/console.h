#include <typedefs.h>

#define VGA_WIDTH 80
#define VGA_HEIGHT 26
#define VGA_VIDMEM ((uint16_t*)0xB8000)

void console_init(void);
void console_clear(void);
void console_setcolor(uint8_t color);
void console_putentryat(char c, uint8_t color, size_t x, size_t y);
void console_putchar(char c);
void console_size_write(const char *str, size_t size);
void console_moveto(size_t x, size_t y);
void console_write(const char *str);
void console_center_write(const char *str);
