#include "ft_printf.h"

int	ft_print_adrs(unsigned long n)
{
  char	*set;
	int		count;

	set = "0123456789abcdef";
	count = 0;
	if (n < 16)
		count += ft_print_char(set[n]);
	else
	{
		count += ft_print_adrs(n / 16);
		count += ft_print_char(set[n % 16]);
	}
	return (count);
}

// int main()
// {
//   unsigned long n = 15;
//   unsigned int n1 = 25;

//   ft_print_adrs(n);
//   ft_print_char('\n');
//   ft_print_adrs(n1);
// }