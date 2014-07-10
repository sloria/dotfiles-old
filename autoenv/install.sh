#!/usr/bin/env zsh
if [ "$(uname -s)" == "Darwin" ]
then
  brew install autoenv
else
  pip install autoenv
fi

