//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>
void zapis();
void prepis();
void otoc();
void naString();

int a;
char vstup[4] = {-2, 3, -5, 8};
char ot[] = "Ahoj";
char otoc_vystup[4];
long vystup[4];
int x = 0x44434241;
char tretiuloha[4];

void main()
{
    //Zapis
    // zapis();
    // printf("prom %d \n", a);

    //Ukol 1
    for (int i = 0; i < 4; i++){
        printf(" %d", vstup[i]);
    }
    printf("\n");

    prepis();
    for (int i = 0; i < 4; i++){
        
        printf(" %ld", vystup[i]);
    }
    printf("\n \n");

    printf("%s \n", ot);
    otoc();
    printf("%s \n", otoc_vystup);

    printf("\n \n");
    naString();
    printf("%s \n", tretiuloha);
}
