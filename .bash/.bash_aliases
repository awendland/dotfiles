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
#A Move to trash
if is_osx; then
	if hash rmtrash 2>/dev/null; then
	    alias trash='rmtrash'
	else
		printf "\n\\033[1;31mALERT:\\033[0m You should \\033[34m'brew install rmtrash'\\033[0m for better rm practice"
	fi
else
	if hash gvfs-trash 2>/dev/null; then
		alias trash='gvfs-trash'
	elif hash trash-cli 2>/dev/null; then
		alias trash='trash-cli'
	elif hash trash 2>/dev/null; then
		alias trash='trash'
	else
		printf "\n\\033[1;31mALERT:\\033[0m You should \\033[34m'sude apt-get install trash-cli'\\033[0m for better rm practice"
	fi
fi
#A Recommend against rm
alias rm='printf "\\033[1;31mThis is not the command you are looking for.\\033[0m\nBut if need be --> \\033[1;34m\\\\rm\\033[0m"; false'

#H List dir contents aliases
#A Alias to show additional file/dir data
alias ls='ls -FA'
#A Alias similar to ubuntu ll
alias ll='ls -lh'

#H Copying/Transfer
#A Alias for useful rsync command
alias copy='rsync -azhP'

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
#A Alias for chopping lines in less instead of wrapping them
alias lessnw='less -S'

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
