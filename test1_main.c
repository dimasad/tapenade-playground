#include <stdio.h>
#include <stdlib.h>

#include "test1.h"
#include "test1_b.h"

#define NX 10

int main(int argc, char **argv) {
    double x[NX] = {1.2, 4.0, 3.5};
    double ret = f(x, NX);

    double xb[NX];
    f_b(x, xb, NX, 1);

    for (int i=0; i<NX; i++)
        printf("%e\n", xb[i]);

    return EXIT_SUCCESS;
}