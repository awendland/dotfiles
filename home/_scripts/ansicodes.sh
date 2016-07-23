#!/bin/bash

# Description: Flesh out a new repository from a provided template
function fleshcode() {
  if [ "$1" == "update" ] || [ ! -f ~/.scripts/fleshcode.py ]; then
    curl "https://raw.githubusercontent.com/awendland/code-boilerplates/master/fleshcode.py" > ~/.scripts/fleshcode.py
  fi
  if [ "$1" == "update" ]; then
    printf "fleshcode.py updated"
  else
    python ~/.scripts/fleshcode.py "$@"
  fi
}
