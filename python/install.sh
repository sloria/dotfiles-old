#!/usr/bin/env zsh
# Installs the Anaconda python distribution
# https://store.continuum.io/cshop/anaconda/
# This will install the latest miniconda version for Mac OSX
#

unamestr=`uname -a`
if [[ "$unamestr" == *Darwin* ]]
then
  brew install wget

  # Link pytest configuration
  if [[ ! -a $HOME/pytest.ini ]]; then
    ln -s $ZSH/python/pytest.ini $HOME/pytest.ini
  fi

  if ! command -v conda >/dev/null;
  then
    echo "Installing miniconda python"
    # install miniconda for mac
    wget http://repo.continuum.io/miniconda/Miniconda3-3.5.5-MacOSX-x86_64.sh $HOME/miniconda.sh
    bash $HOME/miniconda.sh -b -p $HOME/miniconda
  else
    echo "conda already installed."
  fi
fi

