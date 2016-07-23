#!/bin/fish

##################
# config imports #
##################

# fish aliases
source ~/.config/fish/aliases.fish

###############
# Misc Config #
###############

# enable vi mode
set -u fish_key_bindings fish_vi_key_bindings

# set nvim as editor
set -gx EDITOR 'vim'

# add ~/.scripts to path
set PATH $HOME/.scripts $PATH

################
# Local Config #
################

source ~/.config/fish/local_config.fish
