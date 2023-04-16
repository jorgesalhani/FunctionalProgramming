#include <stdio.h>
#include <stdlib.h>

void readMainInput(int* X) {
    printf("Main value: [-1 to quit] ");
    scanf("%d", X);
}

int readAndCountUntilNegative(int X) {
    int newX;
    int count = 0;
    printf("next: ");
    scanf("%d", &newX);
    while(newX >= 0) {
        if (newX == X) count++;
        printf("next: ");
        scanf("%d", &newX);
    }
    return count;
}

int main(void) {
    int X;
    readMainInput(&X);
    int total = readAndCountUntilNegative(X);
    printf("%d\n", total);

    return 0;
}