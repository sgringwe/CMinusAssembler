#include <stdio.h>

int a,b,c,d;

int b4() {
	printf("%d\n", 4);
	printf("%d\n", a+1);
	return a+1;
}

int d2() {
  int tmp;
	printf("%d\n", b);
  printf("%d\n", a);
	tmp=a;
	a=b;
	b=tmp;

	return 1;
}

int d3() {
	a=a+1;
	b=b+2;
	c=c+3;
	d=d;

	return c;
}

int d1() {
	int b;

	b=a*200;
	printf("%d\n", a); printf("%d\n", b); printf("%d\n", c); printf("%d\n", d);
	printf("%d\n", d2());
	printf("%d\n", a); printf("%d\n", b); printf("%d\n", c); printf("%d\n", d);
	printf("%d\n", d3());
	printf("%d\n", a); printf("%d\n", b); printf("%d\n", c); printf("%d\n", d);

	return b;
}

int main() {
	a=1; b=2; c=3; d=4;


	a = 2;
	printf("%d\n", b4());
	printf("%d\n", d1());
	a = 1;
	printf("%d\n", b4());
}

