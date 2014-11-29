#!/bin/bash

CONFIGS=~/workspace/configs
SHADOWSOCKSX=~/.ShadowsocksX

ln -sf $CONFIGS/.gitconfig     ~/.gitconfig
ln -sf $CONFIGS/.gitignore     ~/.gitignore
ln -sf $CONFIGS/.vimrc         ~/.vimrc.local
ln -sf $CONFIGS/.bash_profile  ~/.bash_profile
ln -sf $CONFIGS/gfwlist.js     $SHADOWSOCKSX/gfwlist.js
