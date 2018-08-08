#!/bin/bash

CONFIGS=$HOME/configs

ln -sf $CONFIGS/.gitconfig     $HOME/.gitconfig
ln -sf $CONFIGS/.gitignore     $HOME/.gitignore
ln -sf $CONFIGS/ryan.zsh-theme $HOME/.oh-my-zsh/themes/ryan.zsh-theme
ln -sf $CONFIGS/.zshrc         $HOME/.zshrc
ln -sf $CONFIGS/.tmux.conf     $HOME/.tmux.conf
ln -sf $CONFIGS/.eslintrc      $HOME/.eslintrc
