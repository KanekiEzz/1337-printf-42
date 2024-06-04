#include "ft_printf.h"

int ft_print_nbr(int n)
{
  int count;
  
  count = 0;
  if (n == -2147483648)
    return (ft_print_str("-2147483648"));
  else
  {
    if (n < 0)
    {
      count += ft_print_char('-');
      n = -n;
    }
    if (n < 10)
    {
      count += ft_print_char(n + '0');
    }
    else
    {
      count +=  ft_print_nbr(n / 10);
      count +=  ft_print_char(n % 10 + '0');
    }
  }
  return (count);
}

// int main()
// {
//   int nb = 567464;
//   ft_print_nbr(nb);
//   ft_print_char('\n');

//   return 0;
// }