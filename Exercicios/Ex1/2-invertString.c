#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

void printInvertedWord(char* word) {
    int newWordLen = 2*strlen(word);

    int word_i = strlen(word);
    while (word_i >= 0) {
        printf("%c ", word[word_i]);
        word_i--;
    }
    printf("\n");
}

int main(void) {
    char word[30];
    scanf("%[^\n]%*c", word);
    printInvertedWord(word);
}