/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minishell_bonus.h                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: averdon <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/09 17:47:48 by averdon           #+#    #+#             */
/*   Updated: 2023/05/28 16:52:08 by averdon          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINISHELL_BONUS_H

# define MINISHELL_BONUS_H

# include "includes_bonus.h"

typedef struct s_vars
{
	t_double_list	*env;
	int				ctrl_c;
	int				exit_code;
}	t_vars;

extern t_vars	*g_vars;

void			del_tok(char *token);
void			exe_pipe(char *str, char **env);
void			ctrl_c_classic(int signum);
void			ctrl_c_exec_start(int signum);
void			ctrl_c_here_doc(int signum);
void			ctrl_backslash(int signum);
void			ctrl_c_exec_and_heredoc(int signum);
t_double_list	*set_up_list(char **env);
void			del(void *content);
void			free_global(void);
int				main(int argc, char **argv, char **env);
char			*create_prompt(void);
char			*value_of_key(char *key);
int				quotes_closed(char *command);
void			complete_line(char **str, char limiter);
int				command_not_end(char *line);
int				complete_command(char **line);
char			find_limiter(char *str);
void			complete_line_unfinished(char **line);
char			*trim_quotes(char *str);

#endif
