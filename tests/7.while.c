#include <stdio.h>

int a, i, s;

int main() {

  printf("enter a:\n");
  // scanf("%d", &a);
  a = 1;
  s=0;
  i=0;
  while (i<=a && i<=100) {
    s=s+i;
    i=i+1;
  }
  printf("%d\n", s);
}
