#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <unistd.h>

int		ft_printf(const char *format, ...);
void	ft_putchar(char c, int *count);
void	ft_putstr(const char *str, int *count);
void	ft_convert_base(unsigned int u, unsigned int bv, const char *base, int *counter);
void	ft_print_nbr(int n, int *count);
#endif
