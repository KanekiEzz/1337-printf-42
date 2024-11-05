#include "../ft_printf.h"
#include <stdio.h>
#include <limits.h>
int	main(void)
{

	printf("%lld	\n", LLONG_MAX);
	printf("%ld", LONG_MAX);
	return (0);
}