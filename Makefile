NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
AR = ar -rc
RM = rm -f


GREEN = \033[0;32m
YELLOW = \033[0;33m
BLUE = \033[0;34m
RED = \033[0;31m
RED = \033[0;31m
NC = \033[0m


SRCS = ft_printf.c \
		src/ft_putchar.c\
		src/ft_putnbr.c\
		src/ft_convert_base.c\
		src/ft_putstr.c\
		src/ft_convert_base_p.c\

OBJS = $(SRCS:.c=.o)

$(NAME): $(OBJS)
	@echo "$(GREEN)Creating library...$(NC)"
	@echo  "$(RED)\
⠀⠀⠀⠀⠀⠀⠀    ⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠻⠶⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢉⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣍⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⣹⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⢹⣿⡿⣿⣿⣿⣿⣯⣿⣿⡎⣿⣿⣷⡝⣿⣿⣿⣿⣿⣿⣿⣿⡙⣿⣿⡟⢿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠹⣧⣿⣿⡀⣿⣧⢻⢿⣿⣿⣿⡿⣿⣇⢸⡛⣿⣿⣿⡘⣿⣿⣿⣿⣿⣿⣷⣌⣹⣿⣦⡹⣯⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠿⡿⣾⣧⠸⡟⢸⡌⢿⡇⠻⣇⢹⣿⠨⣷⡌⠻⣿⡇⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠣⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣿⡏⣿⣷⢹⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠶⣿⡾⢷⡄⢻⡀⣇⠀⠀⠀⠀⠙⠋⠀⠙⠘⣿⣿⣿⣿⣿⣿⢻⣏⠻⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢸⣿⢸⣿⡀⢻⣿⣿⡧⣘⣿⣷⣄⡀⠀⠴⠷⠀⣈⣴⣿⣿⣴⣷⣌⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⢿⣿⡟⣿⡏⢾⣏⠀⠈⠙⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠸⣿⠀⠃⠀⠹⡏⢼⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣷⠶⣶⣶⣶⣾⣿⠾⡆⠈⠸⡇⠃⠹⡇⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠁⠐⢧⣄⠀⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⡟⣯⣾⣅⢸⠃⠃⠀⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠠⡀⢉⠀⣿⠇⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢰⣿⣿⣿⣇⣿⠏⠇⠈⡠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠈⠃⠸⣆⣸⣿⡟⢙⣿⣿⣿⣿⣿⡟⠛⡿⠿⣿⣿⢃⣿⣷⠿⡿⢸⡟⠀⠀⠘⠁⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⠓⢿⣿⣿⣿⢿⠿⣿⣦⣥⣶⣿⣇⣼⣿⣿⡘⢡⡿⢁⠀⡔⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠘⢿⣦⡸⣿⣿⡧⠀⠀⠀⠈⠙⠿⠿⠿⢿⣿⣿⢿⠟⠠⢃⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣷⣤⣶⡾⠿⠿⠿⠟⠀⢠⣿⠛⠃⢀⠀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡙⠿⡟⢻⣿⣿⣶⡄⢀⣠⣶⡿⠋⢀⡀⢸⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⢠⠸⡟⢲⣌⠻⣿⣿⣿⣷⣾⡿⠋⢁⣀⢸⡇⣾⣿⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⣰⣿⠀⣿⠈⣿⡿⢦⣉⣛⣋⡁⠤⢶⣿⡇⢸⠀⣿⣿⣧⣹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀$(NC)"
	@echo "$(BLUE)\
        ##    ##    ###    ##    ## ######## ##    ## #### \\n\
        ##   ##    ## ##   ###   ## ##       ##   ##   ##  \\n\
        ##  ##    ##   ##  ####  ## ##       ##  ##    ##  \\n\
        #####    ##     ## ## ## ## ######   #####     ##  \\n\
        ##  ##   ######### ##  #### ##       ##  ##    ##  \\n\
        ##   ##  ##     ## ##   ### ##       ##   ##   ##  \\n\
        ##    ## ##     ## ##    ## ######## ##    ## #### $(NC)"
	$(AR) $(NAME) $(OBJS)

%.o: %.c 	ft_printf.h
			$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

clean:
		@echo  "$(YELLOW)Cleaning object files...$(NC)"
		@echo  "$(GREEN)\
		⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠟⠛⠛⣛⣛⠉⠉⠉⢛⣛⣛⣋⡛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢋⣤⣂⡼⠖⡒⣒⣦⣭⡭⢭⡭⠍⢚⢝⠿⣿⣆⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⣿⣟⣵⣿⣿⡇⣾⣿⣿⣸⠿⠿⠿⠷⣶⣝⣾⣿⣄⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠡⠚⣻⣿⣁⣀⡀⠁⠛⣿⣟⠡⠖⣁⠀⣀⣊⡏⠹⠟⠭⣀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢠⡄⣂⡍⡍⠛⣹⣿⠇⣸⣿⣿⠷⣿⣿⣷⣬⣭⣥⠴⠘⢷⡌⡇⡆⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢑⠭⠃⠸⣿⣫⣁⠺⡿⣟⣉⣲⢀⡾⠾⠛⡉⣠⡶⠃⣠⢣⢇⠇⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢹⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⠀⡆⣬⢉⣛⡃⣐⡛⣋⣩⣤⠰⠾⠛⠁⣠⢀⣼⣿⠷⠁⠈⠉⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⢁⣋⣭⣤⣶\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⠀⠀⠀⠈⠉⠁⠉⠁⠉⠉⣁⠀⣴⣾⠇⢡⣾⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣿⠿⠛⣋⣥⡶⠞⣃⣩⠍⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢻⣀⠀⠄⢆⢰⣆⢰⣶⠀⣿⠿⠇⢈⣡⢶⠻⣟⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣶⣿⡟⠡⠶⢛⠉⣴⣾⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⣾⠿⣵⠶⣤⣄⣀⣀⣀⣤⡶⠶⠚⣝⡪⠑⠈⠀⠀⠀⣠⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⡿⢃⣼⣿⣿⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣨⣖⡿⢟⣛⡳⢖⣓⣲⣧⣤⢷⠶⠋⠀⡀⠀⣠⠅⠀⣰⣿⣿⣧⠀⠀⣆⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣷⣾⡿⠛⡋⢹⣿⣿\\n\
		⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣼⣿⣛⣛⣛⠶⡝⠛⢛⣉⡡⠀⠀⠀⢀⣼⠀⡘⠛⡀⣠⣿⣿⣿⣿⣧⠀⢽⣆⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣷⣏⣴⣿⣿⣿\\n\
		⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⠿⠿⠿⣿⢸⣿⣿⣿⡇⠀⠀⠀⡎⢰⠇⠀⠀⠈⣾⣿⣿⣿⣿⣏⠱⠀⠆⡀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⣼⣿⣿⣿⣿⣿⡆⣾⣿⣿⣿⡇⠀⠀⢰⢣⡏⠀⠀⠀⠀⢹⣿⣿⣿⣿⠏⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⢋⣙⣿⣿⣿⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣷⣆⢩⣾⣿⣿⣿⣿⡇⠀⠀⢸⠸⡇⢀⣄⠀⠀⢸⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⡄⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣉⣽⣿⣿⣿⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⠇⣼⣿⣿⣿⣿⣿⡇⠀⠀⣸⣿⣿⡜⠟⠁⢀⣾⣿⣿⣿⣿⡰⣿⠆⠀⢀⣿⠃⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣤⣿⣿⣿⣿⣿⣿⣿\\n\
		⣾⣿⣿⣿⣿⣿⣿⣿⡿⣸⣿⣿⣿⢡⣾⣿⣿⣿⣿⣿⣿⡇⠀⠀⣿⣽⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⣷⣤⣀⣴⣾⣿⡇⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⢾⣿⣿⣿⣿⣿⣿⣿⢇⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣯⠅⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⢿⣿⣿⣿⣿⣿⣿⡿⣸⣿⣿⣿⢹⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⡇⣿⣿⣽⡏⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⢿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⢜⡿⣟⣼⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⢿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢀⠀⠀⠀⠀⢀⠀⡠⠭⣉⢛⣋⢉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⢿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⢘⢛⠋⡝⣛⣩⣫⣭⠀⠀⠀⡜⡭⢿⣿⣿⣿⣁⣿⣶⣾⣶⣶⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⢿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣶⡌⡗⢹⢸⣿⣿⣿⣀⠀⢸⣿⡰⣚⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⠈⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣻⣿⣿⣿⣿⣿⣧⢻⣿⣿⣿⣿⡿⠀⣧⣸⡇⣿⣿⣿⣿⣆⢸⣿⣷⡱⠚⠿⣿⣿⢹⣿⣿⣿⣿⣿⢹⣿⣿⣧⡀⠀⠀⣰⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣻⣿⣿⣿⣿⣿⣿⣷⣝⣛⡻⠟⠕⠁⣿⣿⡇⣿⣿⣻⣿⢸⣶⣿⣿⣷⡞⡵⢦⣿⢘⣛⣛⡿⢿⢃⣿⣿⣿⠯⣜⠀⡰⣿⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⡇⣿⣯⡇⣿⣿⡇⣿⢸⣿⣿⣿⣿⣷⣜⢮⡻⣇⣿⣿⣿⣟⣼⡏⢍⢡⢎⣆⣼⣷⡌⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\\n\
		⢻⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⡿⢟⡾⢃⡝⣸⣿⣿⣷⠹⣾⣿⣿⣿⣿⣿⣿⣷⣽⡺⣘⣿⢏⣾⡿⡫⣨⣵⣿⡟⢿⣿⣿⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿$(NC)"
		$(RM) $(OBJS)

fclean: clean
		$(RM) $(NAME)

re : fclean all

.PHONY: clean 
