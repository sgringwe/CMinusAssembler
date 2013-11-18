#include <stdio.h>

int a[10];
int p, l, r;

int sort()
{
 int i,j,t,least;
  
    if (l == r) {
      return 1;
    }  else {
	i = l;
	least = i;
	j = l + 1;
	while (j<=r) {
              if (a[j] < a[least]) { 
                least = j;
              }
	      j = j + 1;
	}

        t = a[i];
        a[i] = a[least];
        a[least] = t;
        i = i + 1;
	
        l = l+1;
        return sort();
   }
}

int output()
{
   int i;

   i = 0;
   while (i < 10) {
     printf("%d\n", a[i]);
     i = i+1;
   }
   return i;
}  

int input()
{  int i;
   i = 0;
   printf("Enter a[0:9]\n");
   while (i < 10) {
     // scanf("%d",a[i]);
    a[i] = 3;
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
  p = input();
  printf("After input\n");
  p = output();
  l=0;
  r=9;
  p = sort();
  printf("After sorting\n"); 
  p = output();
}