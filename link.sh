#!/bin/bash

CONFIGS=$HOME/configs
SHADOWSOCKSX=$HOME/.ShadowsocksX
ATOM=$HOME/.atom

ln -sf $CONFIGS/.gitconfig     $HOME/.gitconfig
ln -sf $CONFIGS/.gitignore     $HOME/.gitignore
ln -sf $CONFIGS/.bash_profile  $HOME/.bash_profile
ln -sf $CONFIGS/gfwlist.js     $SHADOWSOCKSX/gfwlist.js

ln -sf $CONFIGS/.atom/keymap.cson $ATOM/keymap.cson
ln -sf $CONFIGS/.atom/config.cson $ATOM/config.cson
ln -sf $CONFIGS/.atom/styles.less $ATOM/styles.less
