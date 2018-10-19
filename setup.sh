#!/bin/bash

pacman -Sy
pacman -S git python nginx-mainline python-pip cmake
pacman -Syu

cp ~/devenv/vim ~/.vim

rm /etc/ngnix/nginx.conf
ln -s HOME$/devenv/nginx/ngnix.conf /etc/ngnix/nginx.conf

# Attention: cmake is required to compile vim YCM plugin. You can uninstall it after VIM installed.
