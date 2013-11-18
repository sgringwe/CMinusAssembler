#include <stdio.h>


int x, y;

int gcd() {
   int t;
   if (y==0) {
      return x;
	 }
         else {
	      t = x;
	      x = y;
	      y = t - y * (t / y);
	      return gcd();
	 }
}

int main() {
   printf("enter x:\n");
   // scanf("%d", x);
   x = 3;
	 printf("enter y:\n");
   // scanf ("%d",y);
   y = 3;
   while ((x != 0) || (y != 0)) {
    printf("%d\n", gcd());
    printf("enter x:\n");
    // scanf("%d", x);
    x = 3;
    printf("enter y:\n");
    // scanf("%d", y);
    y = 3;
   }
}
