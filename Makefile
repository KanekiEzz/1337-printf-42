MANSRCS = ft_printf.c ft_putchar.c ft_putstr.c ft_convert_base.c ft_print_nbr.c

MANOBJS = $(MANSRCS:.c=.o)
NAME = libftprintf.a

all: $(NAME)

$(NAME): $(MANOBJS)
	ar -rcs $(NAME) $(MANOBJS)

%.o: %.c libftprintf.h
	cc -Wall -Wextra -Werror -c $< -o $@

test: $(NAME) main.o
	cc -o main main.o $(NAME)
	./main

clean:
	rm -f $(MANOBJS) main.o

fclean: clean
	rm -f $(NAME) main

re: fclean all

.PHONY: all clean fclean re bonus test
