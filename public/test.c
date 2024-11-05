// #include "libftprintf.h"
// #include <string.h>

int	_putstr(char *str, int count)
{
	int	i;

	i = 0;
	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
		count++;
	}
	return (count);
}


void _putnbr(int nbr, unsigned int count)
{
	int			i;
	if (nbr == -2147483648)
	{
		write(1, "-2147483648", 11);
		count += 11;
		return ;
	}
	if (nbr < 0)
	{
		write(1, "-", 1);
		nbr *= -1;
	}
	if (nbr > 9)
	{
		_putnbr(nbr / 10, count);
		_putnbr(nbr % 10, count);
	}
	else
	{
		char c = nbr + '0';
		write(1, &c, 1);
		count++;
	}
}

void	_convert_u_octal(int nbr, int bas, char *str, int count)
{
	if (nbr >= bas)
		_convert_u_octal(nbr / bas, bas , str, count);
 	write(1, &str[nbr % bas], 1);	
	count++;
}

void _convert_x_hexadecimal(int nbr, int bas, char *str, int count)
{
	if (nbr >= bas)
		_convert_x_hexadecimal(nbr / bas, bas, str, count);
	write(1, &str[nbr % bas], 1);
	count++;
}


void _convert_X_hexadecimal(int nbr, int bas, char *str, int count)
{
	if (nbr >= bas)
		_convert_X_hexadecimal(nbr / bas, bas, str, count);
	write(1, &str[nbr % bas], 1);
	count++;
}


void _convert_p_binary(int nbr, int bas, char *str, int count)
{
	if (nbr >= bas)
		_convert_p_binary(nbr / bas , bas, str, count);
	write(1, &str[nbr % bas], 1);
	count++;
}

int	_format(va_list args, char format, unsigned int count)
{
	if (format == '%')
	{
		write(1, "%", 1);
		count++;
	}
	else if (format == 's')
	{
		_putstr(va_arg(args, char *), count);
	}
	else if (format == 'c')
	{
		char p = va_arg(args, int);
		write(1, &p, 1);
		count++;
	}
	else if (format ==  'd' || format == 'i')
	{
		int p = va_arg(args, int);
		_putnbr(p, count);
	}
	else if  (format == 'u')
	{
		_convert_u_octal(va_arg(args, int), 8, "01234567",  count);
	}
	else if (format == 'p')
	{
		_convert_p_binary(va_arg(args, int), 2, "01", count);
	}
	else if (format == 'x' || format == 'X')
	{
		if (format == 'x')
			_convert_x_hexadecimal(va_arg(args, int), 16, "0123456789abcdef", count);
		else if (format == 'X')
			_convert_X_hexadecimal(va_arg(args, int), 16, "0123456789ABCDEF", count);
	}
	return (count);
}
int	_print_list(const char *format, ...)
{
	va_list	args;
	int		i;
	int		count;

	i = 0;
	count = 0;
	va_start(args, format);
	while (format[i])
	{
		if (format[i] != '%')
		{
			write(1, &format[i], 1);
			count++;
		}
		else
		{
			i++;
			if (format[i])
				_format(args, format[i], count);
		}
		i++;
	}
	write(1, "\n", 1);
	va_end(args);
	return (count);
}
int	main(void)
{
	char 	*str = "Hello, World!";
	int nbr = -2147483648;
	_print_list("kankei1: %s\nnbr:  %d\n", str, nbr);
	
	
	int nbr1 = -2147483648;
	printf("nbr i:  %i\n", nbr1);


	int octal = 123;
	int octal1 = 123;
	_print_list("_printf ocatl: %u\n",  octal);
	printf("printf ocatl: %u\n",  octal1);

	int decimale_x = 1234;
	_print_list("_printf hexadecimale: %X", decimale_x);


	int binary = 1337;
	_print_list("binary: %p", binary);
	printf("binary: 10100111001");
}
