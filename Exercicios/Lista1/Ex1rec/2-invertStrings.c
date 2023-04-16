#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

void readInput(char* word) {
    printf("Word to be inverted: ");
    scanf("%[^\n]%*c", word);
}

void printInvertedWordAux(char* word, int word_i) {
    if (word_i <= strlen(word)) {
        printInvertedWordAux(word, word_i+1);
        printf("%c ", word[word_i]);
    }
}

void printInvertedWord(char* word) {
    printInvertedWordAux(word, 0);
    printf("\n");
}

int main(void) {
    char word[30];
    readInput(word);
    printInvertedWord(word);
    return 0;
}