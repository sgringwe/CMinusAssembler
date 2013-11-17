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
         write("enter x:");
         read (x);
	 write("enter y:");
         read (y);
         while ((x != 0) || (y != 0)) {
	       printf("%d\n", gcd());
	       write("enter x:");
               read (x);
	       write("enter y:");
               read (y);
         }
}
