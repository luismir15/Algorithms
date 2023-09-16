#include <stdio.h>

int linearSearch(int haystack[], int size, int needle) {
  for (int i = 0; i < size; i++) {
    if (haystack[i] == needle) {
      return 1;
    }
  }

  return 0;
}

int main() {
  int haystack[] = {1, 2, 3, 4, 5};
  int needle = 3;

  int result = linearSearch(haystack, sizeof(haystack)/sizeof(haystack[0]), needle);

  if (result) {
    printf("Found!\n");
  } else {
    printf("whoops\n");
  }

  return 0;
}
