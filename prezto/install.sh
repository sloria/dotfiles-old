#!/usr/bin/env zsh
# Prezto installation
# see https://github.com/sorin-ionescu/prezto

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Force symlink zprestorc
echo "Force linking .zprestorc"
ln -sF $ZSH/prezto/zprestorc ~/.zprestorc
