#include <stdio.h>

int a, b;

int main() {
   b=1;
   while (b<=10) {
     a=1;
     while (a <= 10) {
       printf("%d\n", a*b);
       a= a+1;
     }
     b=b+1;
   }
}
