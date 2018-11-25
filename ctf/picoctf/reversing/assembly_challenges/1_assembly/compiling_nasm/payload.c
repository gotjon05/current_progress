#include <stdio.h>
extern int asm1(int a);

int main(void){
	printf("0x%x\n", asm1(0xc8));

	return 0;

}
