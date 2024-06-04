#include "ft_printf.h"

static int	ft_print_format(char format, va_list ap)
{
	int	count;

    count = 0;
    if (format == 'c')
        count += ft_print_char(va_arg(ap, int));
    else if (format == 'S')
        count += ft_print_str(va_arg(ap, char *));
    else if (format == 'd' || format == 'i')
        count += ft_print_nbr(va_arg(ap, int));
    else if (format == 'p')
    {
        count += ft_print_str("0x");
        count += ft_print_adrs(va_arg(ap, unsigned long));
    }
    else if (format == 'u')
        count += ft_print_uns(va_arg(ap, unsigned int));
    else if (format == 'x' || format == 'X')
        count += ft_print_hex(va_arg(ap, unsigned int), format);
    // else if (format == 'o')
    // count += ft_print_oct(va_arg(ap, unsigned int));
    // else if (format == 'f')
    // count += ft_print_float(va_arg(ap, double));
    // else if (format == '%')
    // count += ft_print_percent();
    else
        count += ft_print_char(format);
    return (count);
}

int	ft_printf(const char *format, ...)
{
    va_list ap;
	int count;

    count = 0;
    va_start(ap, format);
    if (write(1, "", 1) == -1)
        return (-1);
    while (*format)
    {
        if (*format == '%')
        {
            format++;
            if(!*format)
                break;
            count += ft_print_format(*format, ap);
        }
        else
            count += ft_print_char(*format);
        format++;
    }
	return (count);
}


int main()
{
    int n = 1337;
    char *str = "Hello, kaneki!";
    void *ptr = (void *)0x12345678;

    ft_printf("Printing an integer: %d\n", n);
    ft_printf("Printing a string: %s\n", str);
    ft_printf("Printing a pointer: %p\n", ptr);

    ft_printf("Hello, %s!\n", "world");
    ft_printf("Decimal: %d\n", 42);
    ft_printf("Hexadecimal: %x\n", 255);
    ft_printf("Character: %c\n", 'A');
    ft_printf("Pointer address: %p\n", (void*)&main);
    
    return 0;
}
