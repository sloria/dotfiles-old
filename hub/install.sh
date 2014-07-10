#!/usr/bin/env zsh
unamestr=`uname -a`
if [[ "$unamestr" == *Darwin* ]]
then
  brew install hub
fi
