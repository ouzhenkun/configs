#!/bin/bash

CONFIGS=$HOME/configs
SHADOWSOCKSX=$HOME/.ShadowsocksX

ln -sf $CONFIGS/.gitconfig     $HOME/.gitconfig
ln -sf $CONFIGS/.gitignore     $HOME/.gitignore
ln -sf $CONFIGS/.bash_profile  $HOME/.bash_profile
ln -sf $CONFIGS/gfwlist.js     $SHADOWSOCKSX/gfwlist.js
ln -sf $CONFIGS/ryan.zsh-theme $HOME/.oh-my-zsh/themes/ryan.zsh-theme
