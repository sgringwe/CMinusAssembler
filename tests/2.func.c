#include <stdio.h>

int a;

int t()
{
  int b;
	
  write("inside function");
  b = 10;
  return b+5;
}

int main()
{
  a = t();
  printf("%d\n", a);
}