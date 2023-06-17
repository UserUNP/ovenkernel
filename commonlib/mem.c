#include <mem.h>

void *memcpy(void *restrict destptr, const void *restrict srcptr, size_t size)
{
	unsigned char *dest = (unsigned char *) destptr;
	const unsigned char *src = (const unsigned char *) srcptr;
	for (size_t i = 0; i < size; i++) dest[i] = src[i];
	return destptr;
}

void *memset(void *ptr, int val, size_t size)
{
	unsigned char * buf = (unsigned char *) ptr;
	for (size_t i = 0; i < size; i++) buf[i] = (unsigned char) val;
	return ptr;
}
