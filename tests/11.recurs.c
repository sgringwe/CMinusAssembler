#include <stdio.h>

int a;
int b;

int decls() {
  printf("%d\n", a);
  if (a > 0) {
    a = a - 1;
    return decls();
  }
  else {
    a = 0;
    return a;
  }
}

int main() {
  write("Enter a:\n");
  scanf("%d",a);
  printf("%d\n", decls());
}
