#include <stdio.h>

int i, a[11];

int t()
{
  int i, s;
  int b[10];

  i = 0;
  while (i<10) {
    b[i] = a[i+1];
    i = i+1;
  }

  return b[3];
}

int main()
{
  i = 1;
  while (i < 11) {
     a[i] = i;
     i = i+1;
  }

  i = t();
  printf("%d\n", i);
}