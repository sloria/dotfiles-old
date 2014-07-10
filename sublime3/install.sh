#!/usr/bin/env zsh

unamestr=`uname -a`

# only run these steps on Mac

if [[ "$unamestr" == *Darwin* ]]
then
  export SUBLIME="$HOME/Library/Application Support/Sublime Text 3"
  export SUBLIME_USER_PATH="$SUBLIME/Packages/User"

  setopt EXTENDED_GLOB
  # Link all sublime files except for Preferences.sublime-settings, which should be copied manually
  echo "Linking sublime files to $SUBLIME_USER_PATH"
  for file in $ZSH/sublime3/User/
  do
    dest=$SUBLIME_USER_PATH/$(basename "$file")
    if [[ ! -a $dest ]]; then
      ln -s $file $dest
    fi
  done
fi

