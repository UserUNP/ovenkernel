MBALIGN equ 1 << 0 ; multiboot align
MEMINFO equ 1 << 1
MBFLAGS equ MBALIGN | MEMINFO ; multiboot flags
BLMAGIC equ 0x1BADB002 ; bootloader magic number (grub (i think))
CHCKSUM equ -(BLMAGIC + MBFLAGS) ; bootloader reads this to verify if it is multiboot-able

SECTION .multiboot
	align 4
	dd BLMAGIC
	dd MBFLAGS
	dd CHCKSUM

SECTION .bss
	align 16
	stack_btm:
		resb 16000 ; reserve 16 kilobytes
	stack_top:

SECTION .text
	global _start:function (_start.end - _start)
	extern _bootstrap_main
	extern _bootstrap_panic
	extern _bootstrap_exitok

	_panic:
		call _bootstrap_panic
		jmp hltjmp
	_exitok:
		call _bootstrap_exitok
		jmp hltjmp
	hltjmp: hlt
	_start:
		cli ; no more interrupts
		mov esp, stack_top ; move stack pointer
		call _bootstrap_main
		cmp eax, 0
		je _exitok
		jl _panic
		jg _panic
	.end: ; (for calculating size)
