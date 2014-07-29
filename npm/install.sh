#!/usr/bin/env zsh
# Make sure node/npm is installed

unamestr=`uname -a`
if [["$unamestr" == *Darwin* ]]
then
  brew install node
fi

# install some common libraries
npm install -g grunt-cli gulp coffee-script
