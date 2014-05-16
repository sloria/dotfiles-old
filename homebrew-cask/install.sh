#!/bin/sh
#
# Homebrew-cask
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew cask
# Make sure brew cask is installed
brew tap caskroom/cask
brew install brew-cask

alias cask="brew cask"

cask install google-chrome 
cask install dropbox 
cask install iterm2
cask install flux
echo "Installed cask dependencies"