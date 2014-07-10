#!/usr/bin/env zsh

unamestr=`uname -a`

# tmux
if [[ "$unamestr" == *Darwin* ]]
then
  brew install tmux
  brew install reattach-to-user-namespace  # Needed for vim-style copy and paste
fi

# optionally install tmuxinator
# gem install tmuxinator
