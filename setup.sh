#!/bin/sh
cd ~
git clone https://github.com/zsh-users/antigen.git
git clone https://github.com/deepy/dotfiles.git
touch local.zsh
ln -s dotfiles/zshrc.zsh .zshrc
