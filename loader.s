global loader                   ;entry symbol for ELF

MAGIC_NUMBER equ 0x1BADB002     ;DEFINE magic number constant
FLAGS equ ALIGN|MEMINFO                   ;Multiboot flags
CHECKSUM equ -MAGIC_NUMBER      ;checksum calculate should be 0

section .text:
align 4                         ;4 byte alligned
	dd MAGIC_NUMBER             ;write magic number to the machine
	dd FLAGS                    
	dd CHECKSUM
loader:
	mov eax, 0xCAFEBABE         ;place value in eax
.loop:
	jmp .loop                   ;loop 4evr
