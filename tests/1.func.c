#include <stdio.h>

int a;

int t()
{
  printf("inside function\n");
  return 10;
}

int main()
{
  a = t();
  printf("%d\n", a);
}