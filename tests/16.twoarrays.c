#include <stdio.h>

int a[50];
int i, j, s;
int b[50];

int main()
{
  i = 0;
  while (i < 50) {
    a[i] = 0;
    i = i+1;
  }

  j = 0;
  while (j < 50) {
    b[j] = j+50;
    j = j+1;
  }

  i = 0;
  s = 0;
  while (i < 100) {
    if (i < 50) {
      s = s + a[i];
    } else {
      s = s + b[i-50];
    }
    i = i+1;
  }

  printf("%d\n", s);
  printf("%d\n", a[5]);
  printf("%d\n", b[10]);
}
