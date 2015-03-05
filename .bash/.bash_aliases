#!/bin/bash

# bash_aliases

#I Allow aliases to be with sudo
alias sudo="sudo "

#H Bash assistance
#A Reload .bashrc
alias reloadbash='source ~/.bashrc'

#H Easier navigation
#A Alias for common cd mistypes
alias cd..='cd ..'
#A Alias for going to $CODEDIR
alias gocode='cd $CODEDIR'

#H File manipulation
#A Alias for times when I can't remember pwd
alias whereami='pwd'
#A Alias for du to size a folder
alias size='du -sh'

#H Git aliases
#A Get the url of the current repo's origin
alias originurl='git config --get remote.origin.url'

#H Grep aliases
#A Make grep always use extended version
alias grep='grep -E'
#A Alias for finding all files containg some text
alias filesthatcontain='grep -Rl . -e'
#A Alias for finding text that only occurs in the second file provided
alias onlyin2nd='grep -Fxvf'
#A Alias for easily grepping history
alias rem='history | grep -e'

#H Less aliases
#A Make less always respect ansi-colors
alias less='less -R'
#A Alias for chopping lines in less instead of wrapping them
alias lessnw='less -S'

#H List dir contents aliases
#A Alias to improve ls coloring, test is ls supports --color or -G
if ls --color -d . >/dev/null 2>&1; then
    alias ls='ls -Fa --color=auto'
else
    alias ls='ls -GFa'
fi
#A Alias similar to ubuntu ll
alias ll='ls -lh'

#H Copying/Transfer
#A Alias for useful rsync command
alias copy='rsync -azhP'

#H Internet aliases
#A Alias for Python's SimpleHTTPServer
alias webserver='python -m SimpleHTTPServer'
#A Alias for wget to use server supplied file download name
alias download='wget --content-disposition'
#A Quickly retrieve machine's remote IP from OpenDNS server
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
#A Retrieve more robust info about the current wan IP
alias ipinfo='curl ipinfo.io'

#H OSX
#A Show hidden files in Finder
alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
#A Hide hidden files in Finder
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
