#include <stdio.h>
extern int asm3(int a, int b, int c);

//https://xnand.github.io/2018/10/22/picoCTF2018-assembly-0-1-2-3-4.html

int main(void) {

	printf("0x%x\n", asm3(0xbda42100,0xb98dd6a5,0xecded223));

	return 0;
}
