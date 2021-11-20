#include <stdio.h>

long eight_arguements(long *x1, int *x2, short *x3, char *x4, long x5, int x6, short x7,char x8){
	long t1=*x1;
	long t2=(long)(*x2); 
	long t3=(long)(*x3); 
	long t4=(long)(*x4);
	*x1 = x5; *x2 = x6; *x3 = x7; *x4=x8;
	return t1+t2+t3+t4;
}

int main(){
	long x5=100; int x6=200; short x7=300; char x8=10;
	long t = eight_arguements(&x5,&x6,&x7,&x8,x5,x6,x7,x8);
	printf("%ld",t);
	return 0;
}
