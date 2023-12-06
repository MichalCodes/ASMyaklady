//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

int max(int pol[10]);
int min(int pol[10]);
int suma(int pol[10]);
int sude(long pol[]);
int liche(long pol[]);
int dvojce(long pol[]);
int tecky(char vstup[]);
int delkaStr(char vstup[]);

int main()
{
    int pole[10] = {10, 20, 14, 9, 8, 3, 71, 2, 4, 5};
    printf("max: %d \n", max(pole));
    printf("min: %d \n", min(pole));
    printf("suma: %d \n", suma(pole));
    long polelong[] = {1, 6, 2, 4, 3, 3, 1, 4, -1};
    printf("pocet sudych: %d \n", sude(polelong));
    printf("pocet lichych: %d \n", liche(polelong));
    printf("pocet dvojic: %d \n", dvojce(polelong));
    char abcd[] = " A h o j ";
    printf("Pocet mezer: %d \n", tecky(abcd));
    printf("Pocet znaku: %d \n", delkaStr(abcd));
    return 0;
}
