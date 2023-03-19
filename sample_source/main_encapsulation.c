#include "point.h"
#include <stdio.h>

int main(int argc, char* argv[]) 
{
    struct Point *p1 = makePoint(10, 10);
    struct Point *p2 = makePoint(5, 10);
    double distance_result = distance(p1, p2);
    printf("Distance : %02f\n", distance_result);
}
