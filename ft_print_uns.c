#include "ft_printf.h"

int	ft_print_uns(unsigned int n)
{
  int count;

  count = 0;
  if (n < 10)
  {
    count += ft_print_char(n + '0');
  }
  else
  {
    count += ft_print_uns(n / 10);
    count += ft_print_char(n % 10 + '0');
  }
  return (count);
}

// int main()
// {
//   ft_print_uns(12345);
// }