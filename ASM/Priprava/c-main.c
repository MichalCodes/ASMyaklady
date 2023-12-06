#include <stdio.h>
int pole[4] = {51, 3, 1, 6};
int pole3[6] = {15, 8, 20, 14, 9, 2};
int cvb = 1, result;
long sude, liche;
long x = 1, n = 2;
char retezec[4] = "ABCD";
void suda();
void posuv();
void soucet();
void to_lower();
void podminka();

int main(){
    //1.
    for(int i = 0; i < 4; i++){
        printf(" %d ", pole[i]);
    }
    printf("\n");
    suda();
    for(int i = 0; i < 4; i++){
        printf(" %d ", pole[i]);
    }
    printf("\n \n");
    //2.
    printf(" %ld \n", x);
    posuv();
    printf(" %ld \n \n", x);
    //3.
    soucet();
    printf(" Sude: %ld, Liche: %ld \n \n", sude, liche);
    //4.
    to_lower();
    printf(" %s \n", retezec);
    //5.
    podminka();
    printf(" %d \n", result);
    return 0;
}