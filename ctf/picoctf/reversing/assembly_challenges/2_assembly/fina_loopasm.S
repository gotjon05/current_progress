
Local Variables
var1 -- ebp-0x4
var2 -- ebp-0x8
---------
Return Address-- ebp+0x4
---------
Parameters
arg1 -- ebp+0x8
arg2 -- ebp+0xc

https://manybutfinite.com/post/journey-to-the-stack/

.intel_syntax noprefix
.bits 32
	
.global asm2

asm2(0x7,0x28) 

Which one is arg1 and arg2? 



asm2:
	push   	ebp
	mov    	ebp,esp
	sub    	esp,0x10
	mov    	eax,DWORD PTR [ebp+0xc]		eax = (0x28)40
	mov 	DWORD PTR [ebp-0x4],eax		ebp-0x4 = 0x28
	mov    	eax,DWORD PTR [ebp+0x8]		eax = 0x7
	mov	DWORD PTR [ebp-0x8],eax		ebp-0x8 = 0x7
	jmp    	part_b				got to part B
part_a:	
	add    	DWORD PTR [ebp-0x4],0x1		
	add	DWORD PTR [ebp+0x8],0x76	
part_b:	
	cmp    	DWORD PTR [ebp+0x8],0xa1de	
	jle    	part_a
	mov    	eax,DWORD PTR [ebp-0x4]		Answer is checking for result of VAR1
	mov	esp,ebp
	pop	ebp
	ret
