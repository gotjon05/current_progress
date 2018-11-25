What does asm1(0xc8) return?


>>> 0xc8+0x3
203
>>> hex(_)
'0xcb


.intel_syntax noprefix
.bits 32
	
.global asm1

asm1:
	push	ebp
	mov	ebp,esp
	cmp	DWORD PTR [ebp+0x8],0x9a	is argument1 greater than 0x9a?  0xc8 > 0x9a  True, jump to part_a
	jg 	part_a				
	cmp	DWORD PTR [ebp+0x8],0x8	
	jne	part_b				
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x2c	is argument1 not equal to 0xc8? 0xc8 != 0x2c True, jump to part c	
	jne	part_c				
	mov	eax,DWORD PTR [ebp+0x8]		
	sub	eax,0x3				
	jmp	part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]		
	sub	eax,0x3				
	jmp	part_d				
	cmp	DWORD PTR [ebp+0x8],0xc8
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8] 	0xc8+0x3 == 203
	add	eax,0x3
part_d:
	pop	ebp
	ret
