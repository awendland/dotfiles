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

# set vim as editor
set -gx EDITOR 'vim'

# add ~/.scripts to path
set PATH $HOME/.scripts $PATH

# cause less to stay on screen, and print ansi colors
set -gx LESS '-RX'

################
# Local Config #
################

source ~/.config/fish/local_config.fish
