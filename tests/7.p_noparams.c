#include <stdio.h>

int i,j,k,l;


int a1() {
	printf("%d\n", 1);
	return 0;
}

int a2() {
	j = a1(); 
	printf("%d\n", 2);
	return 0;
}

int a3() {
	i = a1();
	j = a2();
	printf("%d\n", 3);
	return 0;
}

int a4() {
	i = a1();
	j = a2();
	k = a3();
	printf("%d\n", 4);
	return 0;
}


int main() {


	i = a1(); j = a2(); k = a3(); l = a4() ;
}
