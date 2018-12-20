#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>

#define BUFSIZE 148
#define FLAGSIZE 128

void vuln(char *buf){

      
// gets() has only received the name of the array (a pointer), it does not know how big the array is, and it is impossible to determine this from the pointer alone. 
//gets() will not stop writing at the end of the array. Instead, it continues writing past the end and into memory it doesn't own.
gets(buf);
  puts(buf);
}

int main(int argc, char **argv){


//buffering the output into buf 	
  setvbuf(stdout, NULL, _IONBF, 0);
  
  // Set the gid to the effective gid
  // this prevents /bin/sh from dropping the privileges
  gid_t gid = getegid();
  setresgid(gid, gid, gid);

  char buf[BUFSIZE];

  puts("Enter a string!");
  vuln(buf);

  puts("Thanks! Executing now...");


//It is casting buf into a function and running it as if it was a function that returns void and takes no arguments.  
  ((void (*)())buf)();
     
  return 0;
}
