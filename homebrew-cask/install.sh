#!/usr/bin/env zsh
#
# Homebrew-cask
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew cask

# link Caskfile
if [[ ! -a ~/Brewfile ]]; then
    ln -s $ZSH/homebrew/Brewfile ~/Brewfile
fi

# Execute the bundle command
brew bundle ~/Caskfile
