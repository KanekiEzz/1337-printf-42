#ifndef FT_PRINTF_H
# define FT_PRINTF_H

#include <unistd.h>
#include <stdio.h>
#include <stdarg.h>

int	ft_print_f(const char *format, ...);
int	ft_print_char(int c);
int	ft_print_str(char *s);
int	ft_print_nbr(int n);
int	ft_print_uns(unsigned int n);
int	ft_print_hex(unsigned int n, char c);
int	ft_print_adrs(unsigned long n);

#endif