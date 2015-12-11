#!/bin/bash

set -e
printf "\n"
if [ -f _bashrc ]; then
  mkdir -p ~/.bash
  for i in _bash/_bash*; do cp $i ~/`echo $i | sed "s/_bash/\.bash/g"`; done
  for i in _bash/aux*; do cp $i ~/`echo $i | sed "s/aux_//g" | sed "s/_bash/\.bash/g"`; done
  cp _bash_profile ~/.bash_profile
  cp _bashrc ~/.bashrc
  printf "bash configs copied to home directory\n"
  cp _screenrc ~/.screenrc
  printf "screen configs copied to home directory\n"
  cp _nanorc ~/.nanorc
  if [ -d ~/.nano ]; then
    printf "nano-highlight definitions already installed\n"
  else
    mkdir -p ~/.nano
    git clone --depth=1 https://github.com/serialhex/nano-highlight.git ~/.nano
    printf "nano-highlight definitions cloned\n"
  fi
  printf "nano configs copied to home directory\n"
  cp _gitignore_global ~/.gitignore_global
  git config --global core.excludesfile ~/.gitignore_global
  printf "global gitignore installed\n"
  source ~/.bashrc
  printf "bash reloaded\n"
else
   printf "Error: cwd must be in the root personal_env_config dir\n"
fi
