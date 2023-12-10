global _start

section .text
_start:
	mov ebx, 1
	mov ecx, 4	; number of iterations
label:
	add ebx, ebx	; ebx += ebx
	dec ecx		; ecx -= 1
	cmp ecx, 0	; compare ecx with 0
	jg label
	mov eax, 1
	int 0x80
