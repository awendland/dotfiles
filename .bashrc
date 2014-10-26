# Colorize commandline output
export PS1="\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
