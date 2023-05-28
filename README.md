# Minishell 

## or rather Megashell

This project is part of the third circle of projects of the 42 common core, and it's the first one in group. The goal is to create a program which simulate a shell like Bash. For that, I was with my friend Nathan Locussol (login 42 : nlocusso, Github account : https://github.com/Skylow667). You will find the subject of the project into the repository. My grade : 120/100

## How to use it

1. Clone it `git clone git@github.com:AnthonyVerdon-42Projects/minishell.git`.
2. Compile it `make`. You can also use `make bonus` to add the management of wildcards, `&&` and `||` operators.
3. Launch it like a regular shell `./minishell`

## What is handle

-display of a prompt showing your location into the tree directory
-working history (up and down arrows)
-execution a command (of course)
-single quotes which prevent interpretion of meta-characters
-single quotes which prevent interpretion of meta-characters except $
-redirections (check the end to see all redirections)
-pipes which connect the output of a command to the input of the next one
-environment variables and their expansion
-$? which expand into the exit status of the last command
-`-ctrl-C`,`ctrl-D`, `ctrl-\` like Bash
-builtins : `echo` with `-n`, `cd`, `pwd`, `export`, `unset`, `env`, `exit`

| redirections | behavior |
| ------------ | -------- |
| <            | input    | 
| >            | ouput    |
| <<           | heredoc* |
| >>           | output in append mode |

heredoc : give a delimiter and read standard input until the delimiter appears

and on the bonus, wildcards and `&&` and `||` with parenthesis for priorities

## Find a bug ?

If you find an undefined behaviour (crash, leaks, ...), please submit an issue or contact me
