#include <stdio.h>
//neccisary to explicitly exit
#include <stdlib.h>
//in order to use strcpy
#include <string.h>


void vuln(char *input)
{
char buf[16];

//strcpy doesnt check the length of the buffers
strcpy(buf, input);


}


int main(int argc, char **argv)
{




FILE *f = fopen("flag.txt", "r");

if (f == NULL){
	printf("Flag file is missing");
	exit(0);
}

if (argc > 1){
	vuln(argv[1]);
 	printf("Thanks! Received: %s", argv[1]);
}else{
	printf("This program takes 1 argument.\n");
	return 0;

	}




}







