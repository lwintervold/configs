#!/bin/bash

SCRIPT_PATH=$(dirname $(realpath -s $0))


if [[ $1 == "install" ]]
then
  # Packages 
  sudo apt-get install vim
  sudo apt-get install ctags
  sudo apt-get install git
fi


# Vim
cp $SCRIPT_PATH/vimrc ~/.vimrc

# Git
cp $SCRIPT_PATH/gitignore ~/.gitignore
git config --global core.excludesfile CONFIG_DIR/.gitignore
