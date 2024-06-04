#include "ft_printf.h"

int	ft_print_char(int c)
{
  return (write(1, &c, 1));
}

// int main()
// {
//   char i = 'A';

//   ft_print_char(i);
// }