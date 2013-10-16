#include <stdio.h>

int a,b;

int main()
{
	printf("Enter a:\n");
	// scanf("%d", &a);
  a = 1;
	if (a) {
	    b = 0 - a;
	    printf("%d\n", b);
	} else {
	    b = a;
	    printf("%d\n", b);
       }
}
