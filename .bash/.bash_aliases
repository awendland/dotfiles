#!/bin/bash

# bash_aliases

# Allow aliases to be with sudo
alias sudo="sudo "

# Easier navigation
# Alias for common cd mistypes
alias reloadbash='source ~/.bashrc'
alias cd..='cd ..'
# Alias for going to $CODEDIR
alias gocode='cd $CODEDIR'

# Alias for times when I can't remember pwd
alias whereami='pwd'

# Alias for du to size a folder
alias size='du -sh'

# Grep aliases
# Make grep always use extended version
alias originurl='git config --get remote.origin.url'
alias grep='grep -E'
# Alias for finding all files containg some text
alias filesthatcontain='grep -Rl . -e'
# Alias for finding text that only occurs in the second file provided
alias onlyin2nd='grep -Fxvf'
# Alias for easily grepping history
alias rem='history | grep -e'

# Less aliases
# Make less always respect ansi-colors
alias less='less -R'
# Alias for chopping lines in less instead of wrapping them
alias lessnw='less -S'

# List dir contents aliases
# Alias to improve ls coloring
# Alias similar to ubuntu ll
alias ls='ls -GFa --color=auto'
if ls --color -d . >/dev/null 2>&1; then
    alias ls='ls -Fa --color=auto'
else
    alias ls='ls -GFa'
fi
alias ll='ls -lh'

# Copying/Transfer
# Alias for useful rsync command
alias copy='rsync -azhP'

# Internet aliases
# Alias for Python's SimpleHTTPServer
alias webserver='python -m SimpleHTTPServer'
# Alias for wget to use server supplied file download name
alias download='wget --content-disposition'
# Quickly retrieve machine's remote IP from OpenDNS server
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ipinfo='curl ipinfo.io'

# OSX
# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
