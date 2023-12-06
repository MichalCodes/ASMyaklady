//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

void uloz_cislo();
void prohod();
void dopisE();
void decode();
void nacislo();
void sklCis();

int gx [3] = {1,2,3};
char abc[10] = "Ahoj ";
int enc_string = 0x50415053;
char ef[20];
int a;
int main()
{   
    //Doplnění znaku
    // printf("str = %s \n", abc);
    // dopisE();
    // printf("str = %s \n", abc);

    //Otočení pole
    // for(int i = 0; i < 5; i++){
    //     printf(" %d ", gx[i]);
    // }
    // printf("\n");
    // prohod();
    // for(int i = 0; i < 5; i++){
    //     printf(" %d ", gx[i]);
    // }
    // printf("\n");

    //Cislo na text
    // decode();
    // printf("%s \n", ef);

    //Skladani cisel
    sklCis();
    printf("%d \n", a);

}
