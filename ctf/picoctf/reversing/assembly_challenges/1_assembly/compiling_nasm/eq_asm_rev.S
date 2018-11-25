section .text
global asm1

asm1:
	push	ebp
	mov	ebp,esp
	cmp	DWORD [ebp+0x8],0x9a
	jg 	part_a	
	cmp	DWORD [ebp+0x8],0x8
	jne	part_b
	mov	eax,DWORD [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD [ebp+0x8],0x2c
	jne	part_c
	mov	eax,DWORD [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_b:
	mov	eax,DWORD [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
	cmp	DWORD [ebp+0x8],0xc8
	jne	part_c
	mov	eax,DWORD [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD [ebp+0x8]
	add	eax,0x3
part_d:
	pop	ebp
	ret
