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