#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>

bool isPrime(int n) {
	if (n == 0) return false;
	if (n == 1 || n == 2) return true;
	if (n % 2 == 0) return false;

	for (int i = 3; i <= sqrt(n); i+=2) {
		if (n % i == 0) return false;
	}
	return true;
}

int getPrimesBefore(int N) {
	int sumPrimes = 0;
	for (int i = 0; i <= N; i++) {
		if (isPrime(i)) sumPrimes+=i;
	}
	return sumPrimes;
}

int main(void) {
	int N = 0;
	scanf("%d", &N);
	int sumPrimes = getPrimesBefore(N);
	printf("Sum primes until %d: %d\n", N, sumPrimes);

	return 0;
}