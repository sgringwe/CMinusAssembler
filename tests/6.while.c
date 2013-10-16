#include <stdio.h>

 int a, s;

int main() {
  a=1;
  s=0;
  while (a<=10) {
    printf("%d\n", a);
    s=s+a;
    a=a+1;
  }
  printf("%d\n", s);
}
