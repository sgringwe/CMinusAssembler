#include <stdio.h>

int a[15];
int i,j,t,least;

int main()
{
  a[0] = 32;
  a[1] = 11;
  a[2] = 111;
  a[3] = 88;
  a[4] = 11;
  a[5] = 44;
  a[6] = 33;
  a[7] = 33;
  a[8] = 22;
  a[9] = 77;
  a[10] = 45;
  a[11] = 65;
  a[12] = 76;
  a[13] = 87;
  a[14] = 34;
	
  i = 0;
	
  while (i<14) {
    least = i;
    j = i + 1;
    
    while (j<15) {
      if (a[j] < a[least]) { 
        least = j;
      }
      j = j + 1;
    }
      
    t = a[i];
    a[i] = a[least];
    a[least] = t;
    i= i + 1;
  }

  i = 0;
  while (i<15) {
    printf("%d\n", a[i]);
    i = i + 1;
  }
}
