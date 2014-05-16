#!/bin/sh
#
# Homebrew-cask
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew cask

# Make sure brew cask is installed
brew tap caskroom/cask
brew install brew-cask

echo "Installing brew cask dependencies"

brew cask install google-chrome
brew cask install dropbox
brew cask install iterm2
brew cask install flux
brew cask install bettertouchtool
brew cask install crashplan

echo "Installed cask dependencies"
