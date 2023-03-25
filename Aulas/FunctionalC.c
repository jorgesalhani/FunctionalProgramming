#include <stdio.h>
#include <stdlib.h>

struct Aluno {
    char nome[100];
    int curso;
    int ano;
    int mes;
    int dia;
    float n1;
    float n2;
    float n3;
};

typedef int (*FtnTestaAluno)(struct Aluno*);
typedef int (*FtnComparaAluno)(struct Aluno *, struct Aluno*);

void printAluno(struct Aluno* aluno) {
    printf(
        "Nome: %s\nCurso: %d\nNascimento: %d/%d/%d\nNotas: %.2f, %.2f, %.2f\n\n",
        aluno->nome, aluno->curso, 
        aluno->dia, aluno->mes, aluno->ano,
        aluno->n1, aluno->n2, aluno->n3
    );
}

void printAlunos(struct Aluno alunos[], int n, FtnTestaAluno test) {
    for (int i = 0; i < n; i++) {
        if (test(&alunos[i])) {
            printAluno(&alunos[i]);
        }
    }
    printf("\n");
}

int max_rec(struct Aluno* alunos, int m, int i, int n, FtnComparaAluno cmp) {
    if (!(i < n)) {
        return m;
    }

    if (cmp(&alunos[i], &alunos[m])) {
        return max_rec(alunos, i, i+1, n, cmp);
    } else {
        return max_rec(alunos, m, i+1, n, cmp);
    }
}

int aceitaCurso0(struct Aluno* a) {
    return a->curso == 0;
}

int main(int argc, char* argv[]) {
    struct Aluno alunos[] = {
        {"Jorge", 0, 1996, 10, 24, 7.6, 8.0, 5.3},
        {"Jéssica", 1, 2000, 10, 24, 7.6, 8.0, 5.3},
        {"Maria Rita", 2, 1980, 10, 24, 7.6, 8.0, 5.3},
        {"Bernardo", 1, 1970, 10, 24, 7.6, 8.0, 5.3},
        {"Jaqueline", 0, 2012, 10, 24, 7.6, 8.0, 5.3},
    };

    printAlunos(alunos, 5, aceitaCurso0);
    return 0;
}