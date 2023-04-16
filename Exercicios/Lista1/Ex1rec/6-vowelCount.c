#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

void readInput(char* word) {
    printf("Word: ");
    scanf("%s", word);
}

bool letterIsVowel(char letter, int i) {
    char vowels[10] = {'a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U'};
    if (i < 0) return false;
    if (vowels[i] == letter) return true;
    letterIsVowel(letter, i-1);
}

int countVowels(char* word, int i) {
    if (i > strlen(word)) return 0;
    if (letterIsVowel(word[i], 9)) {
        return 1 + countVowels(word, i+1);
    } else {
        return countVowels(word, i+1);
    }
}

int main(void) {
    char wordInput[50];
    readInput(wordInput);
    int total = countVowels(wordInput, 0);
    printf("%d\n", total);
    return 0;
}