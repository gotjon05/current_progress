.intel_syntax noprefix
.bits 32
	
.global asm1

asm1:					  ; 1: we start here
	push	ebp
	mov	ebp,esp
	cmp	DWORD PTR [ebp+0x8],0xea	; 2: we compare our input value (`0x255`) to `0xea`
	jg 	part_a				; 3: greater than `0xea` so we jump
	cmp	DWORD PTR [ebp+0x8],0x8
	jne	part_b
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x6		; now compare to `0x8`
	jne	part_c				; not equal so we jump to part_c
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
	mov	eax,DWORD PTR [ebp+0x8]		;load our input value (`0x255`) to eax
	add	eax,0x3				;add 3, eax now contains `0x258`
part_d:
	pop	ebp				 ; 9: return value in eax (`0x258`)
	ret
