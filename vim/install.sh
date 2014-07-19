#!/usr/bin/env zsh

if [[ ! -a ~/.vim/bundle/Vundle.vim ]]; then
  # Install Vundle
  echo "Installing Vundle"
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [[ ! -a ~/.vim/snippets ]]; then
  # Link snippets directory
  echo "Linking snippets directory"
  ln -s $ZSH/vim/snippets ~/.vim/snippets
fi
# Install all plugins
echo "Installing plugins"
vim +PluginInstall +qall
echo "Done"
