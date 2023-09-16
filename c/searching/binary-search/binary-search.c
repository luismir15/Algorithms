#include <stdio.h>

int binarySearch(int haystack[], int size, int needle) {
    int lo = 0;
    int hi = size;

    do {
        int m = lo + (hi - lo) / 2;
        int v = haystack[m];

        if (v == needle) {
            return 1;
        } else if (v > needle) {
            hi = m;
        } else {
            lo = m + 1;
        }

    } while (lo < hi);

    return 0;
}

int main() {
    int haystack[] = {1, 2, 3, 4, 5};
    int needle = 4;

    printf("%lu", sizeof(haystack)/sizeof(haystack[0]));
    int size = sizeof(haystack)/sizeof(haystack[0]);
}