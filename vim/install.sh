#!/usr/bin/env zsh
# Install the janus vim distribution
curl -Lo- https://bit.ly/janus-bootstrap | bash

# Make sure that .janus directory exists
if [[ ! -a $HOME/.janus ]]
then
    ln -s $ZSH/vim/janus $HOME/.janus
fi
