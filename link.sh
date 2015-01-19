#!/bin/bash

CONFIGS=~/workspace/configs
SHADOWSOCKSX=~/.ShadowsocksX
ATOM=~/.atom

ln -sf $CONFIGS/.gitconfig     ~/.gitconfig
ln -sf $CONFIGS/.gitignore     ~/.gitignore
ln -sf $CONFIGS/.vimrc         ~/.vimrc
ln -sf $CONFIGS/.bash_profile  ~/.bash_profile
ln -sf $CONFIGS/gfwlist.js     $SHADOWSOCKSX/gfwlist.js

ln -sf $CONFIGS/.atom/keymap.cson $ATOM/keymap.cson
ln -sf $CONFIGS/.atom/config.cson $ATOM/config.cson
ln -sf $CONFIGS/.atom/styles.less $ATOM/styles.less
