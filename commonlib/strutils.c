#include "./strutils.h"

size_t strlen(const char* str)
{
	size_t len = 0;
	while (str[len]) len++;
	return len;
}

char *strcat(char *dest, const char *src)
{
	char* ptr = dest + strlen(dest);
	while (*src != '\0') *ptr++ = *src++;
	*ptr = '\0';
	return dest;
}

char *repeatchar(const char *ch, size_t n)
{
	char *str = "";
	for(size_t x = 0; x < n; x++) strcat(str, ch);
	return str;
}
