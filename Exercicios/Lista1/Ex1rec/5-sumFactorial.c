#include <stdio.h>
#include <stdlib.h>

void readInput(int* N) {
    printf("int N: ");
    scanf("%d", N);
}

long int getFactorial(int N) {
    if (N == 0) return 1;
    return N*getFactorial(N-1);
}

long int sumFactorials(int N) {
    if (N == -1) return 0;
    long int fact = getFactorial(N);
    return fact + sumFactorials(N-1);
}

int main(void) {
    int N;
    readInput(&N);
    
    long int sumTotal = sumFactorials(N);
    printf("%ld\n", sumTotal);
    return 0;
}