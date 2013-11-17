#include <stdio.h>

int a1() {
	printf("%d\n", 1);
	return 1;
}

int a2() {
	printf("%d\n", 2);
	return a1();
}

int a3() {
	printf("%d\n", 4);
	return a1()+a2();
}

int a4() {
	printf("%d\n", 4);
	return a1()+a2()+a3();
}

int main() {
  printf("%d\n", a1()+a2()+a3()+a4());
}
