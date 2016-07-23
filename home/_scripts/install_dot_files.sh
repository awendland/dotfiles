#!/bin/bash

set -e
printf "\n"
if [ -f home ]; then
  mkdir -p ~/.config
  cp -r _config/* ~/.config/
  printf "configs copied to home directory\n"
  cp _vimrc ~/.vimrc
  printf "vim configs copied to home directory\n"
  cp _tmux.conf ~/.tmux.conf
  printf "tmux configs copied to home directory\n"
  cp _gitignore_global ~/.gitignore_global
  cp _gitconfig ~/.gitconfig
  printf "global gitconfig installed\n"
else
   printf "Error: cwd must be in the root personal_env_config dir\n"
fi
