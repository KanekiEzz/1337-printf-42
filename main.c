#include "ft_printf.h"

int main() {
    int n = 1337;
    char *str = "Hello, kaneki!";
    void *ptr = (void *)0x12345678;

    ft_printf("Printing an integer: %d\n", n);
    ft_printf("Printing a string: %s\n", str);
    ft_printf("Printing a pointer: %p\n", ptr);

    ft_printf("Hello, %s!\n", "world");
    ft_printf("Decimal: %d\n", 42);
    ft_printf("Hexadecimal: %x\n", 42);
    ft_printf("Hexadecimal: %X\n", 42);
    ft_printf("Character: %c\n", 'A');
    ft_printf("Pointer address: %p\n", (void*)&main);

    return 0;
}
