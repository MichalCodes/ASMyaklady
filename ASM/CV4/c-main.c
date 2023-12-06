#include <stdio.h>

long mocnina2(long t_N);
int prvocislo(int num);
long str_to_long(char str[]);

int main()
{
    char ret[] = "-12454654688";
    printf("Mocnina2: %ld \n", mocnina2(512));
    printf("Prvocislo: %d \n", prvocislo(9));
    printf("Cislo: %ld \n", str_to_long(ret));
    return 0;
}

