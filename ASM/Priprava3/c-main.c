//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>
#include <string.h>

long faktorial(int num);
void nulovani_k(int *tp_pole, int t_K);
void charToInt(char ret[5]);
int prvocislo(int n);

int main()
{
    char string[5] = "12";
    int pole[12] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    //1.
    printf("Faktorial: %ld \n", faktorial(3));
    //2.
    nulovani_k(pole, 3);
    printf("Nulovani: ");
    for(int i = 0; i < 12; i++){
        printf("%d, ", pole[i]);
    }
    printf("\n");
    //3.
    charToInt(string);
    printf("Retezec na cislo: ");
    for(int i = 0; i < strlen(string); i++){
        printf("%d", string[i]);
    }
    printf("\n");
    //4.
    printf("Prvocislo: %d \n", prvocislo(3));
    return 0;
}
