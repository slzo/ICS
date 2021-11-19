#include <stdio.h>
#include <stdlib.h>
int main(){
	int x;
	if(!scanf("%d",&x))
		exit(0);
	int result = 1;
	switch(x){
		case 1:
			result = x*33;
			break;
		case 2:
			result += 5;
			break;
		case 3:
		case 4:
			result = x*33;
		case 5:
			result += 3;
			break;
		case 20:
			result += 105;
			break;
		case 21:
			result += 106;
			break;
		case 22:
			result = x >> 1;
			break;
		case 23:
			result *= 10;
		case 24:
			result = result >> 2;
			break;
		
		case 10000:
			result = x*33;
			break;
		case 10001:
			result += 5;
			break;
		case 10002:
		case 10003:
			result = x*33;
		case 10004:
			result += 3;
			break;
		case 10005:
			result += 105;
			break;
		case 10006:
			result += 106;
			break;
		case 10007:
			result = x >> 1;
			break;
		case 10008:
			result *= 10;
		case 10009:
			result = result >> 2;
			break;
		defult:
			result += 2;
	}
	return result;
}
