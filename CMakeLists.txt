cmake_minimum_required(VERSION 3.26)

project(ovenkernel)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32 -ffreestanding -nostdlib")
set(CMAKE_ASM_NASM_OBJECT_FORMAT "elf32")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -ffreestanding -nostdlib -O3 -T ${CMAKE_BINARY_DIR}/linker.ld")
enable_language(C ASM_NASM)

add_library(bootstrap STATIC
	bootstrap/boot.asm
	bootstrap/start.c
)

add_library(commonlib STATIC
	commonlib/terminal.c
	commonlib/strutils.c
)

add_executable(${CMAKE_PROJECT_NAME}
	src/main.c
)

target_link_libraries(bootstrap commonlib)
target_link_libraries(${CMAKE_PROJECT_NAME} commonlib bootstrap)

add_custom_target(run
	COMMAND qemu-system-i386 -cdrom ${CMAKE_BINARY_DIR}/${CMAKE_PROJECT_NAME}_grub.iso
	DEPENDS ovenkernel
)

add_custom_target(grub
	COMMAND rm -rf ./iso/boot/ovenkernel -v
	COMMAND rm -rf ${CMAKE_PROJECT_NAME}_grub.iso -v
	COMMAND cp ${CMAKE_PROJECT_NAME} ./iso/boot -v
	COMMAND grub-mkrescue -o ${CMAKE_PROJECT_NAME}_grub.iso ./iso/
	DEPENDS ovenkernel
)
