#include <stdio.h>

//asm(0x8,0x21)

int main(int argc, char *argv[])
{

int count, num;

//printf("please pass two int");

count = 8;
num = 33;


// forgot that scanf requires reference
//scanf("%d %d", &count, &num);
//printf("count is %d and num is %d\n", count, num);



while(num < 14627)
{
	count += 1;
	num += 169;

	printf("0x%04x\n", count);
	printf("0x%04x\n", num);
	return num;
}

}
