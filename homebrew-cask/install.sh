#!/bin/sh
#
# Homebrew-cask
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew cask

# link Caskfile
ln -s $ZSH/homebrew-cask/Caskfile ~/Caskfile

# Execute the bundle command
brew bundle ~/Caskfile
