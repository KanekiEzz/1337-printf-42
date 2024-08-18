#include "ft_printf.h"

void	ft_print_nbr(int n, int *count)
{
  if (n == -2147483648)
	{
		ft_putstr("-2147483648", count);
		return ;
	}
  if (n < 0)
  {
    ft_putchar('-', count);
    n *= -1;
  }
  if (n > 9)
  {
    ft_print_nbr(n / 10, count);
    ft_print_nbr(n % 10, count);
  }
  else
    ft_putchar(n + '0', count);
}
