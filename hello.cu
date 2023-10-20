#include <iostream>
__global__ void myKernel(void) {
}
int main(void) {
	freopen("output.txt", "w", stdout);
	freopen("error.txt", "w", stderr);
	
	myKernel <<<1, 1>>>();
	printf("Hello CUDA!\n");
	return 0;
}
