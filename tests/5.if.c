#include <stdio.h>

int a,b;
	
int main() {
	
	printf("enter a:\n"); 
	// scanf("%d", &a);
	a = 1;
	printf("enter b:\n"); 
	// scanf("%d", &b);
	b = 1;
	
	if (b > a) { 
		if (a > 0) {
		    printf("a = \n");
			printf("%d\n", a);
		}
		else {
		    printf("b = \n");
			printf("%d\n", b);
		}
	}
	else {
		if (a < 0) {
		    printf("a = \n");
			printf("%d\n", a);
	        }
		else {
		    printf("b = \n");
			printf("%d\n", b);
		}
	}
}
