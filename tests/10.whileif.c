#include <stdio.h>

int  s, i, a;

int main()
{
	printf("Enter a:\n");
	// scanf("%d", &a);
  a = 1;

	if (a / 2 * 2 == a) {
          i = 1;
          s = 0;
	  while (i <= a) {
	       s = s + i;
               i = i + 1;
	  }
       } else {
          i = 1;
          s = 1;
	  while (i <= a) {
	       s = s * i;
               i = i + 1;
	  }
	}  
	printf("%d\n", s);
}
