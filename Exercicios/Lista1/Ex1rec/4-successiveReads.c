#include <stdio.h>
#include <stdlib.h>

void readMainInput(int* X) {
    printf("Main value: [-1 to quit] ");
    scanf("%d", X);
}

int readAndCountUntilNegative(int X, int* next) {
    if (X < 0 || *next < 0) return 0;
    printf("next: ");
    scanf("%d", next);
    if (*next == X) {
        return readAndCountUntilNegative(X, next) + 1;
    } else {
        return readAndCountUntilNegative(X, next);
    }
}

int main(void) {
    int X, next;
    readMainInput(&X);
    int total = readAndCountUntilNegative(X, &next);
    printf("Total inputs equals to %d: %d\n", X, total);

    return 0;
}