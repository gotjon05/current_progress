What does asm2(0x8,0x21) return?


---------
Argument Variables 
arg1 	ebp+0x8 - 0x8
arg2 	ebp+0xc	- 0x21

Return Address -- ebp+0x4

EBP

Local Variables 
var1 -- ebp-0x4
var2 -- ebp-0x8

---------



.intel_syntax noprefix
.bits 32
	
.global asm2

,0x3923


asm2:
	push   	ebp
	mov    	ebp,esp	
	sub    	esp,0x10  
	mov    	eax,DWORD PTR [ebp+0xc]		;load arg value 0x21 to eax		eax = 0x21
	mov 	DWORD PTR [ebp-0x4],eax		;mov 0x21 stored in eax to var1		var1 = 0x21
	mov    	eax,DWORD PTR [ebp+0x8]		;mov arg value 0x8 to eax		eax = 0x8
	mov	DWORD PTR [ebp-0x8],eax		;mov 0x8 stored in eax to var2 		var2 = 0x8
	jmp    	part_b				;jump
part_a:	
	add    	DWORD PTR [ebp-0x4],0x1		;var1 += 1
	add	DWORD PTR [ebp+0x8],0xa9	;arg1 += 169
part_b:	
	cmp    	DWORD PTR [ebp+0x8],0x3923	
	jle    	part_a				arg1 > 0x3923(14627)?	Y: jumps to part a, N: doesnt jump
	mov    	eax,DWORD PTR [ebp-0x4]
	mov	esp,ebp
	pop	ebp
	ret
	
					     0x21 + 0x3923/0xa9 =
