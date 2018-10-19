#!/bin/bash

pacman -Suy
pacman -Suy git python nginx-mainline python-pip cmake

ln -s $HOME/devenv/vim $HOME/.vim

rm /etc/nginx/nginx.conf
ln -s $HOME/devenv/nginx/nginx.conf /etc/nginx/nginx.conf

# Attention: cmake is required to compile vim YCM plugin. You can uninstall it after VIM installed.
