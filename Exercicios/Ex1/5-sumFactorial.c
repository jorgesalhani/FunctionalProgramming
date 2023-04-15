#include <stdlib.h>
#include <stdio.h>

void readInput(int* N) {
    printf("int N: ");
    scanf("%d", N);
}

long int getFactorial(int n) {
    long int fact = 1;
    for (int i = 1; i <= n; i++) {
        fact *= i;
    }
    // printf("FACT: %ld\n", fact);
    return fact;
}

long int sumFactorials(int N) {
    long int sumed = 0;
    for (int n = 0; n <= N; n++) {
        sumed += getFactorial(n);
    }
    return sumed;
}

int main(void) {
    int N;
    readInput(&N);
    long int sumTotal = sumFactorials(N);
    printf("Total sum: %ld\n", sumTotal);

    return 0;
}