#include "ft_printf.h"

void ft_format_printf(va_list args, char fi, int *count)
{
	if (fi == '%')
		ft_putchar('%', count);
	else if (fi == 'c')
		ft_putchar((char)va_arg(args, int), count);
	else if (fi == 's')
		ft_putstr(va_arg(args, char *), count);
	else if (fi == 'd' || fi == 'i')
		ft_print_nbr(va_arg(args, int), count);
	else if (fi == 'u')
		ft_convert_base(va_arg(args, unsigned int), 10, "0123456789", count);
	else if (fi == 'x')
		ft_convert_base(va_arg(args, unsigned int), 16, "0123456789abcdef", count);
	else if (fi == 'X')
		ft_convert_base(va_arg(args, unsigned int), 16, "0123456789ABCDEF", count);
	else if (fi == 'p')
	{
		ft_putstr("0x", count);
		ft_convert_base((long long)va_arg(args, unsigned int), 16, "0123456789abcdef", count);
	}
	else
		ft_putchar(fi, count);
}

int ft_printf(const char *format, ...)
{
	size_t i;
	int count;
	va_list args;

	if (write(1, "", 0) == -1 || !format)
		return (-1);
	va_start(args, format);
	count = 0;
	i = 0;
	while (format[i])
	{
		if (format[i] != '%')
			ft_putchar(format[i], &count);
		else
		{
			i++;
			if (format[i] != '\0')
				ft_format_printf(args, format[i], &count);
		}
		if (format[i])
			i++;
	}
	va_end(args);
	return (count);
}
