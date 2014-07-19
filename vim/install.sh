#!/usr/bin/env zsh

if [[ ! -a ~/.vim/bundle/Vundle.vim ]]; then
  # Install Vundle
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
# Install all plugins
vim +PluginInstall +qall
