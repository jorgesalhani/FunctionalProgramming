#include <stdlib.h>
#include <stdio.h>

void readValues(int* N, int* C, int* M) {
    printf("N: ");
    scanf("%d", N);
    printf("N: ");
    scanf("%d", C);
    printf("N: ");
    scanf("%d", M);
}

int chocolateWithMoney(int N, int C) {
    return (int)(N/C);
}

int chocolateWithBoxRetrieval(int chocolates, int M) {
    return (int)(chocolates/M);
}

int main(void) {
    int N, C, M;

    readValues(&N, &C, &M);

    int chocolateBought = chocolateWithMoney(N, C);
    int chocolateGained = chocolateWithBoxRetrieval(chocolateBought, M);

    printf("Bought: %d\nGained: %d\n", chocolateBought, chocolateGained);
    printf("Totoal: %d\n", chocolateBought+chocolateGained);

    return 0;
}