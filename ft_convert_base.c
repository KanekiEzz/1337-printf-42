#include "ft_printf.h"

void	ft_convert_base(unsigned int u, unsigned int bv, const char *base, int *counter)
{
	// baseU = 0123456789; =>  bvU = 10
	// basex = 0123456789abcdef; =>  bvx = 16
	// baseX = 0123456789ABCDEF; =>  bvX = 16

	if (u < bv)
		ft_putchar(base[u], counter);
	else
	{
		ft_convert_base(u / bv, bv, base, counter);
		ft_convert_base(u % bv, bv, base, counter);
	}
}
