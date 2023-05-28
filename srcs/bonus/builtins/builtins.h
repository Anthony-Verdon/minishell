/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   builtins.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: averdon <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/30 17:28:08 by averdon           #+#    #+#             */
/*   Updated: 2023/05/28 16:54:02 by averdon          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef BUILTINS_H

# define BUILTINS_H

# include "cd/cd.h"
# include "echo/echo.h"
# include "env/env.h"
# include "exit/exit.h"
# include "export/export.h"
# include "pwd/pwd.h"
# include "unset/unset.h"
# include "../../../includes/minishell_bonus.h"

int	main_builtins(int argc, char **argv, int pid, t_arg *arg);

#endif
