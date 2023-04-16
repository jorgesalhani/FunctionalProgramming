#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>

void readInput(int* N) {
    printf("Sum primes until: ");
    scanf("%d", N);
}

bool isPrimeAux(int n, int i) {
    if (n % i == 0) return false;
    if (i >= sqrt(n)) return true;
    isPrimeAux(n, i+1);
}

bool isPrime(int n) {
    if (n == 0 || n == 1) return false;
    if (n == 2) return true;
    
    return isPrimeAux(n, 2);
}

int getPrimesBefore(int N) {
    if (N <= 1) return 0;
    if (isPrime(N)) return N + getPrimesBefore(N-1);
    else getPrimesBefore(N-1);
}

int main(void) {
    int N = 0;
    readInput(&N);
    int sumPrimes = getPrimesBefore(N);
    printf("%d\n", sumPrimes);

    return 0;
}