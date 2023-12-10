global _start

section .text
_start:
	mov eax, 1
	mov ecx, 10
	mov ebx, 0
	jmp operation

operation:	
	add ebx, 1
	cmp ebx, ecx
	jl operation
	int 0x80
