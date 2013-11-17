#include <stdio.h>

int a, b;

int t()
{
  int a;
  
  a = 2; 	
  printf("%d\n", a);
  return a+1;
}

int main()
{
  a = 1;
  b = t();
  printf("%d\n", a+b);
}