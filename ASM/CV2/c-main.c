//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>
long pole[10] = {5, 8, -10, 2, -5, 8, -12, 2, 3, 79};
char retezec[9] = ".a_._._._";
int zbytek32[10] = {64, 93, 96, 128, 256, 45, 27, 9, 21, 65};
void otocSign();
void otocSign2();
void prepisTecky();
void zbytek();

int main()
{
    //1.
    printf("S neg \n");
    printf("Pred otocenim:");
    for (int i = 0; i < 10; i++){
        printf(" %ld", pole[i]);
    }
    otocSign();
    printf(" \nOtocene: ");
    for (int i = 0; i < 10; i++){
        printf(" %ld", pole[i]);
    }
    printf("\n\n");

    printf("Bez neg \n");
    printf("Pred otocenim:");
    for (int i = 0; i < 10; i++){
        printf(" %ld", pole[i]);
    }
    otocSign();
    printf(" \nOtocene: ");
    for (int i = 0; i < 10; i++){
        printf(" %ld", pole[i]);
    }
    printf("\n\n");
    //2.
    zbytek();
    for (int i = 0; i < 10; i++){
        printf(" %d", zbytek32[i]);
    }
    //3.
    prepisTecky();
    printf("\n \n %s \n", retezec);
    return 0;
}
