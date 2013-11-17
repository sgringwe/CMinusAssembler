#include <stdio.h>

int a, b;

int t()
{
  int a;
 
  b = 5; 
  a = 2; 	
  printf("%d\n", a);
  return a+b;
}

int main()
{
  a = 1;
  b = t();
  printf("%d\n", a+b);
}