#include <stdio.h>
#include <string.h>


//memset is copying the character  (an unsigned char) to the first n characters of the string pointed to, by the argument str.



int main () {
   char str[50];

   strcpy(str,"This is string.h library function");
   puts(str);
   //output-> This is string.h library function



   //fills 7 characters starting from "str" with $
   memset(str,'$',7);
   puts(str);
   //output-> $$$$$$$ string.h library function 
   return(0);

}
