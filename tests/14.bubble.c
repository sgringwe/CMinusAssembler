#include <stdio.h>

int a[20];
int p, s, e, i;

int sort()
{
 int i,j,t,least;
  
	i = s;
	while (i<e) {
    	  least = i;
	  j = i + 1;
	  while (j<e) {
              if (a[j] < a[least]) { 
                least = j;
              }
	      j = j + 1;
	  }
          t = a[i];
          a[i] = a[least];
          a[least] = t;
          i= i + 1;
	}
    return 1;
}

int output()
{
   int i;

   i = 0;
   while (i < 20) {
     printf("%d\n", a[i]);
     i = i+1;
   }
   return i;
}  

int input()
{
   s = 3;
   e = 7;
   i = s;
   write("Enter a[3:7]\n");
   while (i <= e) {
     scanf("%d",a[i]);
     i = i+1;
   }
   return i;
}  

int initialize()
{
   int i;

   i = 0;
   while (i < 20) {
     a[i] = 0;
     i = i+1;
   }
   return 1;
}  

int main()
{ 
  p = initialize();
  write("After initialization\n");
  p = output();
  p = input();
  write("After input\n");
  p = output();
  s=0;
  e=20;
  p = sort();
  write("After sorting\n"); 
  p = output();
}