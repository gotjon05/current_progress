http://unixwiz.net/techtips/x86-jumps.html
`

What does asm1(0x255) return?



Function arguments and local variables are stored on the stack

the first parameter will always be at (ebp+8) --> 0x255

ebp+8 -- argument variables
ebp+4 -- return address 




By using a base pointer the return address will always be at ebp+4, the first parameter will always be at ebp+8, and the first local variable will always be at ebp-4.  
Even as the stack size grows and shrinks those offsets do not change.  



intel --> instr   dest,source



.intel_syntax noprefix
.bits 32
	
.global asm1

asm1:
	push	ebp
	mov	ebp,esp
	cmp	DWORD PTR [ebp+0x8],0xea
	jg 	part_a	
	cmp	DWORD PTR [ebp+0x8],0x8
	jne	part_b
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x6
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
	cmp	DWORD PTR [ebp+0x8],0x126
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
part_d:
	pop	ebp
	ret
