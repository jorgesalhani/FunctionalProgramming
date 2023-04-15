#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void readInput(char* word) {
    printf("Word: ");
    scanf("%s", word);
}

int countVowels(char* word) {
    int count = 0;
    char vowels[10] = {'a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U'};
    for (int i = 0; i < strlen(word); i++) {
        for (int j = 0; j < 10; j++) {
            if (word[i] == vowels[j]) count++;
        }
    }
    return count;
}

int main(void) {
    char wordInput[50];
    readInput(wordInput);
    int totalVow = countVowels(wordInput);
    printf("%d\n", totalVow);

    return 0;
}