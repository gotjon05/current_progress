#include <stdio.h>



int main()
{
	int n, previous, current, next;
	
	n = 1015;


	previous = 1; 
	current = 1; 
	next = 1;



	for(int i = 3; i <= n; ++i)
	{
		next = current + previous;
		previous = current;
		current = next; 
	}
	
	printf("%d\n", next);
	return 0;

}
