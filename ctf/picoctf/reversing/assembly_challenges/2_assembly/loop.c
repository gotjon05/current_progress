#include <stdio.h>

//asm2(0x7,0x28)

int main(int argc, char *argv[])
{


//asm2(0x7,0x28)
int arg1, arg2, local_var1, local_var2;
arg1 = 0x7;
arg2 = 0x28;


//mov     eax,DWORD PTR [ebp+0xc]         arg2 --> eax = 0x28
//mov     DWORD PTR [ebp-0x4],eax         eax --> var1 = ebp-0x4 = 0x28
local_var1 = arg2;

//mov     eax,DWORD PTR [ebp+0x8]         arg1 --> eax = 0x7
//mov     DWORD PTR [ebp-0x8],eax         eax --> var2 = ebp-0x8 = 0x7
local_var2 = arg1;




while(1){

	//cmp     DWORD PTR [ebp+0x8],0xa1de
	//jle     part_a
	if(arg1 <= 0xa1de){ 
		//DWORD PTR [ebp-0x4],0x1
		local_var1 += 1;
		//DWORD PTR [ebp+0x8],0x76
		arg1 += 118;
	
	} else{	
		//Checking for results of var1  
		//mov     eax,DWORD PTR [ebp-0x4] 
		//mov     esp,ebp
		//pop     ebp
		printf("%d", local_var1);
		break;
	}	

	}

}



