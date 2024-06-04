#include "ft_printf.h"

int	ft_print_str(char *s)
{
  int count;

  if (!s)
    return 0;

  count = 0;
  while (*s != '\0')
  {
    ft_print_char(*s);
    s++;
    count++;
  }

  return (count);
}

// int main()
// {
//   char s[] = "kaneki ken";

//   ft_print_str(s);
//   ft_print_char('\n');

//   return 0;
// }
