#!/bin/bash

# Run :PluginInstall after this.

# Get Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Set configuration
cp .vimrc ~/.vimrc

# Set theme
mkdir ~/.vim/colors
cp apprentice.vim ~/.vim/colors
