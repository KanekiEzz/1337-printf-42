#include "ft_printf.h"

void	ft_putstr(const char *str, int *count)
{
	if (!str)
	{
		ft_putstr("(null)", count);
		return ;
	}
	while (*str)
		ft_putchar(*str++, count);
}
