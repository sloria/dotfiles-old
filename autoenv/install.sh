#!/usr/bin/env zsh
unamestr=`uname -a`
if [[ "$unamestr" == *Darwin* ]]
then
  brew install autoenv
else
  pip install autoenv
fi

