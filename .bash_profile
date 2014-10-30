#!/bin/bash
function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo '.'${ref#refs/heads/};
}
export PS1='\u@\h:\w\[\033[1;32m\]$(git_branch)\[\033[0m\]$ '
#export PS1="\u@\h:\w $"c
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"
alias ll="ls -l"c
ulimit -S -n 2048
stty start undef
