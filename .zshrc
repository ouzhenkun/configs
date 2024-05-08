# Path to your oh-my-zsh installation.
export ZSH=/Users/zhenkunou/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME='ryan'

TERM=xterm-256color

bindkey '^f' vi-forward-blank-word
bindkey '^ ' autosuggest-accept
bindkey '^n' history-beginning-search-forward
bindkey '^p' history-beginning-search-backward

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow nvm zsh-autosuggestions npm)

# User configuration

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/zhenkunou/tools/flutter/bin"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home"
export ANDROID_HOME="/Users/zhenkunou/Library/Android/sdk"
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=/opt/homebrew/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/ryan_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# ctrl-s saving
alias vim="stty stop '' -ixoff; vim"

# helpers
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
alias t="tmux"
alias g="git"
alias ll="ls -l -h"
alias dnsmasq-start="sudo launchctl start homebrew.mxcl.dnsmasq"
alias dnsmasq-stop="sudo launchctl stop homebrew.mxcl.dnsmasq"
alias dnsmasq-config="vim /usr/local/etc/dnsmasq.conf"
alias dnsmasq-log="sudo tail -f /var/log/dnsmasq.log"
alias nginx-stop="sudo nginx -s stop"
alias nginx-reload="sudo nginx -s reload"
alias nginx-start="sudo nginx"
alias nginx-config="vim /usr/local/etc/nginx/nginx.conf"
alias hosts-config="sudo vim /etc/hosts"

set -o ignoreeof

alias proxy_on='export all_proxy=socks5://127.0.0.1:7891'
alias proxy_off='unset all_proxy'

# npm config set registry https://registry.npm.taobao.org --global
# npm config set disturl https://npm.taobao.org/dist --global
