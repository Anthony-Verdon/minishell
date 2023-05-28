# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nlocusso <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/26 17:13:34 by nlocusso          #+#    #+#              #
#    Updated: 2023/05/28 16:39:52 by averdon          ###   ########.fr        #
#    Updated: 2023/01/10 15:15:05 by nlocusso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		:= srcs/mandatory/minishell.c \
			  srcs/mandatory/utils/utils.c \
			  srcs/mandatory/utils/utils_2.c \
			  srcs/mandatory/utils/prompt.c \
			  srcs/mandatory/utils/signals_handler.c \
			  srcs/mandatory/utils/value_of_key.c \
			  srcs/mandatory/utils/parse_line_quotes.c \
			  srcs/mandatory/parsing/put_space.c \
			  srcs/mandatory/parsing/var_env.c \
			  srcs/mandatory/parsing/utils_env.c \
			  srcs/mandatory/parsing/token.c \
			  srcs/mandatory/parsing/join_token.c \
			  srcs/mandatory/builtins/cd/cd.c \
			  srcs/mandatory/builtins/cd/return_home.c \
			  srcs/mandatory/builtins/echo/echo.c \
			  srcs/mandatory/builtins/echo/parsing_echo.c \
			  srcs/mandatory/builtins/env/env.c \
			  srcs/mandatory/builtins/exit/exit.c \
			  srcs/mandatory/builtins/exit/parse.c \
			  srcs/mandatory/builtins/export/export.c \
			  srcs/mandatory/builtins/export/parsing_export.c \
			  srcs/mandatory/builtins/export/append_value.c \
			  srcs/mandatory/builtins/export/change_value.c \
			  srcs/mandatory/builtins/export/prepare_tab_to_display.c \
			  srcs/mandatory/builtins/export/sort_and_display_env_var.c \
			  srcs/mandatory/builtins/pwd/pwd.c \
			  srcs/mandatory/builtins/unset/unset.c \
			  srcs/mandatory/builtins/main_builtins.c \
			  srcs/mandatory/pipex/exe_cmd.c \
			  srcs/mandatory/pipex/exe_builtins.c \
			  srcs/mandatory/pipex/free.c \
			  srcs/mandatory/pipex/check_files.c \
			  srcs/mandatory/pipex/utils_pipex.c \
			  srcs/mandatory/pipex/initialized.c \
			  srcs/mandatory/pipex/main_pipex.c \
			  srcs/mandatory/pipex/pars_arg.c \
			  srcs/mandatory/pipex/pars_exec.c \
			  srcs/mandatory/pipex/dup2.c \
			  srcs/mandatory/pipex/utils_dup2.c \
			  srcs/mandatory/pipex/check.c \

BSRCS		:= srcs/bonus/minishell.c \
			  srcs/bonus/parse_line_unfinished/parse_line_unfinished.c \
			  srcs/bonus/parse_line_unfinished/parse_line_links.c \
			  srcs/bonus/parse_line_unfinished/parse_line_parenthesis.c \
			  srcs/bonus/parse_line_unfinished/parse_line_quotes.c \
			  srcs/bonus/parse_line_unfinished/space.c \
			  srcs/bonus/utils/utils.c \
			  srcs/bonus/utils/utils_2.c \
			  srcs/bonus/utils/prompt.c \
			  srcs/bonus/utils/signals_handler.c \
			  srcs/bonus/utils/value_of_key.c \
			  srcs/bonus/parsing/put_space.c \
			  srcs/bonus/parsing/put_wildcards.c \
			  srcs/bonus/parsing/var_env.c \
			  srcs/bonus/parsing/utils_env.c \
			  srcs/bonus/parsing/token.c \
			  srcs/bonus/parsing/join_token.c \
			  srcs/bonus/builtins/cd/cd.c \
			  srcs/bonus/builtins/cd/return_home.c \
			  srcs/bonus/builtins/echo/echo.c \
			  srcs/bonus/builtins/echo/parsing_echo.c \
			  srcs/bonus/builtins/env/env.c \
			  srcs/bonus/builtins/exit/exit.c \
			  srcs/bonus/builtins/exit/parse.c \
			  srcs/bonus/builtins/export/export.c \
			  srcs/bonus/builtins/export/parsing_export.c \
			  srcs/bonus/builtins/export/append_value.c \
			  srcs/bonus/builtins/export/change_value.c \
			  srcs/bonus/builtins/export/prepare_tab_to_display.c \
			  srcs/bonus/builtins/export/sort_and_display_env_var.c \
			  srcs/bonus/builtins/pwd/pwd.c \
			  srcs/bonus/builtins/unset/unset.c \
			  srcs/bonus/builtins/main_builtins.c \
			  srcs/bonus/pipex/exe_cmd.c \
			  srcs/bonus/pipex/exe_builtins.c \
			  srcs/bonus/pipex/free.c \
			  srcs/bonus/pipex/check_files.c \
			  srcs/bonus/pipex/utils_pipex.c \
			  srcs/bonus/pipex/initialized.c \
			  srcs/bonus/pipex/main_pipex.c \
			  srcs/bonus/pipex/pars_arg.c \
			  srcs/bonus/pipex/pars_exec.c \
			  srcs/bonus/pipex/dup2.c \
			  srcs/bonus/pipex/utils_dup2.c \
			  srcs/bonus/pipex/check.c \
			  srcs/bonus/bonus/wildcards/wildcards.c \
			  srcs/bonus/bonus/wildcards/tab_file.c \
			  srcs/bonus/bonus/wildcards/sort_file.c \
			  srcs/bonus/bonus/wildcards/create_file_char.c \
			  srcs/bonus/bonus/and_or/parsing_and_or.c \
			  srcs/bonus/bonus/and_or/parsing_utils.c \
			  srcs/bonus/bonus/and_or/launch_command.c \
			  srcs/bonus/bonus/and_or/five_elements.c \
			  srcs/bonus/bonus/and_or/three_elements.c \
			  srcs/bonus/bonus/and_or/reduce_booleans.c

OBJS		:= ${SRCS:.c=.o}

NAME		:= minishell

BOBJS		:= ${BSRCS:.c=.o}

NAME_BONUS		:= minishell_bonus

COMPILER	?= clang

RM			:= @rm -f

CFLAGS		:= -Wall -Wextra -Werror -g 

LIBRARY     := -Lincludes/libraries/libft -lft \
			   -Lincludes/libraries/libft/ft_fdprintf -lftfdprintf \
			   -lreadline

all :        ${NAME}

bonus :        ${NAME_BONUS}

.c.o :		${OBJS}
			@(${COMPILER} ${CFLAGS} -c $< -o ${<:.c=.o} || (clear; printf "\033[0;31;1mcompilation failed\n\033[0m"; ${COMPILER} ${CFLAGS} -c $< -o ${<:.c=.o} ; exit 1))
	
${NAME}:	${OBJS}
			@clear
			@printf "\033[93;1;5mCompiling ...\n\033[0m"
			@make -C includes/libraries/libft
			@${COMPILER} ${CFLAGS} -o ${NAME} ${OBJS} ${LIBRARY}
			@clear
			@printf '\033[0;92;1mCompilation finished\n\033[0m'

${NAME_BONUS}:	${BOBJS}
			@clear
			@printf "\033[93;1;5mCompiling ...\n\033[0m"
			@make -C includes/libraries/libft
			@${COMPILER} ${CFLAGS} -o ${NAME_BONUS} ${BOBJS} ${LIBRARY}
			@clear
			@printf '\033[0;92;1mCompilation finished\n\033[0m'

clear:
			@clear

compiling:
			@printf "\033[93;1;5mCompiling ...\n\033[0m"

cleaning:
			@printf "\033[93;1;5mCleaning ...\n\033[0m"

clean :		clear cleaning
			${RM} ${OBJS} ${BOBJS} 
			@make -C includes/libraries/libft clean
			@clear
			@printf '\033[0;92;1mCleaning finished\n\033[0m'

fclean :	clear clean cleaning 
			${RM} ${NAME} ${NAME_BONUS} 

			@make -C includes/libraries/libft fclean
			@clear
			@printf '\033[0;92;1mCleaning finished\n\033[0m'

re :		fclean all

.PHONY : all clean fclean re clear compiling cleaning
