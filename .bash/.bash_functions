#!/bin/bash

# bash_functions

# Code Helpers
# Setup simple client-side web repo
function fleshweb() {
	echo ""
	if [ -z "$1" ]; then
		echo "No repository name supplied"
	else
		git clone https://github.com/awendland/simple-web-boilerplate.git "$1"
		cd "$1"
		rm -rf ".git/"
		git init
		echo ""
		echo "Fleshed out \"$1\""
		cd ..
	fi
}

# Print out ansi code table
function ansicodes() {
	T='gYw'   # The test text
	echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";
	for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m';
	    do FG=${FGs// /}
	    echo -en " $FGs \033[$FG  $T  "
	    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
	        do echo -en "$EINS \033[$FG\033[$BG  $T \033[0m\033[$BG \033[0m";
	    done
	    echo;
	done
	echo
}