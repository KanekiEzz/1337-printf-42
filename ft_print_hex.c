#include "ft_printf.h"

int	ft_print_hex(unsigned int n, char c)
{
  unsigned int	count;
  char			*str;

  count = 0;
  if (c == 'x')
    str = "0123456789abcdef";
  if (c == 'X')
    str = "0123456789ABCDEF";
  if (n >= 16)
  {
    count += ft_print_hex(n / 16, c);
    count += ft_print_char(str[n % 16]);
  }
  if (n < 16)
    count += ft_print_char(str[n]);
  return (count);
}

// int main()
// {
//   unsigned int n = 15;
//   unsigned int n1 = 25;
//   char c = 'X';

//   ft_print_hex(n, c);
//   ft_print_hex(n1, c);
// }