#include <stdio.h>

int a[100];
int i;

int main () {
   printf("enter i =\n");
   // scanf("%d", &i);
   i = 1;
  
   if (i<0 || i>=100) {
     printf("out of bound!\n");
   } else {
     a[i] = i*2;
     a[5] = 5;

     printf("%d\n", a[i]);
  }   
}
