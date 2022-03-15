#include "test1.h"

double f(double *x, int n) {
    double ret = 0;
    for (int i=0; i<n; i++)
        ret += 0.5 * x[i]*x[i];
    return ret;
}
