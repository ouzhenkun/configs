#!/bin/bash
function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
  echo '⎇ '${ref#refs/heads/};
}
export ANDROID_HOME=~/android/sdk/
export PATH=${PATH}:~/android/sdk/platform-tools:~/android/sdk/tools
export PS1='\u:\w\[\033[1;32m\]$(git_branch)\[\033[0m\]$ '
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"
ulimit -S -n 2048
stty start undef
alias ll="ls -l -a"c
alias vim="stty stop '' -ixoff; vim"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
alias vim="stty stop '' -ixoff; vim"
