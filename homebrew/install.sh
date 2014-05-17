#!/usr/bin/env zsh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Link the Brewfile
if [[ ! -a ~/Brewfile ]]; then
    ln -s $ZSH/homebrew/Brewfile ~/Brewfile
fi

# install dependencies in Brewfile
brew bundle ~/Brewfile

exit 0
