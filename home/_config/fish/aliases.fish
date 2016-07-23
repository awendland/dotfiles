#I Allow aliases to be with sudo
alias sudo "sudo "

#H Fish assistance
#A Reload config.fish
alias fish_reload 'source ~/.config/fish/config.fish'

#H Easier navigation
#A Alias for common cd mistypes
alias cd.. 'cd ..'

#H File manipulation
#A Move to trash
switch (uname)
    case Darwin
        if type rmtrash > /dev/null 2> /dev/null
            alias trash 'rmtrash'
        else
            printf "\n\\033[1;31mALERT:\\033[0m You should \\033[34m'brew install rmtrash'\\033[0m for better rm practice"
        end
    case Linux
        if type gvfs-trash > /dev/null 2> /dev/null
            alias trash 'gvfs-trash'
        else if type trash-cli > /dev/null 2> /dev/null
            alias trash 'trash-cli'
        else if type trash > /dev/null 2> /dev/null

        else
            printf "\n\\033[1;31mALERT:\\033[0m You should \\033[34m'sude apt-get install trash-cli'\\033[0m for better rm practice"
        end
end
#A Recommend against rm
alias rm 'printf "\\033[1;31mThis is not the command you are looking for.\\033[0m\nBut if need be --> \\033[1;34m\\\\rm\\033[0m"; false'

#H Copying/Transfer
#A Alias for useful rsync command
alias copy 'rsync -azhP'
#A Alias for useful remote rsync copying
alias push 'rsync -rzhP'

#H Git aliases
#A Get the url of the current repo's origin
alias originurl 'git config --get remote.origin.url'
#A Short alias for "git diff --cached"
alias g 'git'

#H Vim aliases
#A Alias vim to neovim
alias vim 'nvim'

#H Grep aliases
#A Alias for finding all files containg some text
alias filesthatcontain 'grep -Rl . -e'
#A Alias for finding text that only occurs in the second file provided
alias onlyin2nd 'grep -Fxvf'

#H Less aliases
#A Alias for chopping lines in less instead of wrapping them
alias lessnw 'less -S'

#H Cat aliases
#A Alias for pretty printing a file
alias pretty 'pygmentize -g'

#H Internet aliases
#A Alias for Python's SimpleHTTPServer
alias webserver 'python -m SimpleHTTPServer'
#A Alias for wget to use server supplied file download name
alias download 'wget --content-disposition'
#A Quickly retrieve machine's remote IP from OpenDNS server
alias wanip 'dig +short myip.opendns.com @resolver1.opendns.com'
#A Retrieve more robust info about the current wan IP
alias ipinfo 'curl ipinfo.io'

#H OSX
switch (uname)
    case Darwin
	#A Show hidden files in Finder
	    alias showdotfiles 'defaults write com.apple.finder AppleShowAllFiles -bool true; and killall Finder'
	#A Hide hidden files in Finder
	    alias hidedotfiles 'defaults write com.apple.finder AppleShowAllFiles -bool false; and killall Finder'
	#A Open Markdown editor
	    if test -e /Applications/MacDown.app
	        alias markdown 'open -a "MacDown"'
	    else
	        alias markdown 'There is no Markdown handler setup.'
	    end
end
