#include <stdio.h>
#include <stdint.h>

void __bf_print(int64_t x) { 
    printf("%c", x); 
}

char __bf_get() {
    char c;
    scanf("%c", &c);
    return c;
}