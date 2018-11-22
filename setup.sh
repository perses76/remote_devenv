#!/bin/bash

pacman -Suy
pacman -Suy git python nginx-mainline python-pip cmake

ln -s $HOME/devenv/vim $HOME/.vim
ln -s $HOME/devenv/.profile $HOME/.profile

rm /etc/nginx/nginx.conf
ln -s $HOME/devenv/nginx/nginx.conf /etc/nginx/nginx.conf


# install git autocomplete
# https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks#Auto-Completion
mkdir -p /etc/bash_completion.d/
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > /etc/bash_completion.d/git-completion.bash

# Attention: cmake is required to compile vim YCM plugin. You can uninstall it after VIM installed.
