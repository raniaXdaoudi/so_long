# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: radaoudi <radaoudi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/13 19:29:13 by tbesson           #+#    #+#              #
#    Updated: 2022/09/06 18:09:59 by radaoudi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS_DIR	= sources
SRCS_NAME	= so_long.c		\
			ft_check_map.c		\
			ft_close_game.c		\
			ft_free_memory.c	\
			ft_handle_input.c	\
			ft_init_game.c		\
			ft_init_map.c		\
			ft_render_map.c		\
			ft_check_validpath.c	\
			ft_validpath_exit.c	\
			ft_utils.c
OBJS_DIR	= objs
OBJS_NAME	= ${SRCS_NAME:.c=.o}
SRCS		= $(addprefix $(SRCS_DIR)/,$(SRCS_NAME))
OBJS		= $(addprefix $(OBJS_DIR)/,$(OBJS_NAME))
MLX			= mlx/Makefile.gen
LFT			= libft.a
INC			= -I ./includes -I ./libs/libft -I ./libs/mlx
LIB			= -L ./libs/libft -lft -L ./libs/mlx -lmlx -lXext -lX11 -lm -lbsd

NAME	= so_long

CC		= gcc
RM		= rm -f
CFLAGS	= $(INC) -Wall -Wextra -Werror
all:		$(MLX) $(LFT) $(NAME)

$(NAME):	$(OBJS)
			$(CC) $(CFLAGS) -o $@ $^ $(LIB)

$(MLX):
			@make -s -C libs/mlx

$(LFT):
			@make -s -C libs/libft

$(OBJS_DIR)/%.o:	$(SRCS_DIR)/%.c
			@mkdir $(OBJS_DIR) 2> /dev/null || true
			$(CC) $(CFLAGS) -o $@ -c $<

clean:
			@make -s $@ -C libs/libft
			@rm -rf $(OBJS) $(OBJS_DIR)

fclean:		clean
			@make -s $@ -C libs/libft
			@rm -rf $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
