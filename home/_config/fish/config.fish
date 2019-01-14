#!/bin/fish

##################
# config imports #
##################

# fish aliases
source ~/.config/fish/aliases.fish

# ensure fisher is installed
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

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
