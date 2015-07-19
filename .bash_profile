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

alias dnsmasq-start="sudo launchctl start homebrew.mxcl.dnsmasq"
alias dnsmasq-stop="sudo launchctl stop homebrew.mxcl.dnsmasq"
alias dnsmasq-config="vim /usr/local/etc/dnsmasq.conf"
alias dnsmasq-log="sudo tail -f /var/log/dnsmasq.log"
alias nginx-stop="sudo nginx -s stop"
alias nginx-reload="sudo nginx -s reload"
alias nginx-start="sudo nginx"
alias nginx-config="vim /usr/local/etc/nginx/nginx.conf"
alias hosts-config="sudo vim /etc/hosts"
