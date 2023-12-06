//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

int min(int pol[]);
int intchar(char intc[]);

int main()
{
    //ul1
    int pole[5] = {9, -3, 1, 2, 7};
    printf("Pozice nejmensiho kladneho: %d \n", min(pole));
    // char ret[8] = " A h o j ";
    // printf("Cislo %s \n", intchar(ret));
    char ret[] = "10001000";
    printf("Cislo %d \n", intchar(ret));

    return 0;
}
