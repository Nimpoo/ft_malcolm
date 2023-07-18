# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sihemayoub <sihemayoub@student.42.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/18 14:44:10 by sihemayoub        #+#    #+#              #
#    Updated: 2023/07/18 14:52:16 by sihemayoub       ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC:=gcc
CXXFLAGS:=-Werror -Wall -Wextra

NAME:=ft_malcolm

SRC:=$(addprefix src/, main.c)
OBJ:=$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CXXFLAGS) -o $(NAME) $(OBJ)

clean:
	rm $(OBJ)

fclean: clean
	rm $(NAME)

re: fclean all

.PHONY: all clean fclean re
