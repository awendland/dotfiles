#!/bin/bash

# Description: Epoch time conversion
# Source:  http://www.quora.com/What-are-some-of-the-best-command-prompt-or-the-terminal-tricks/answer/Dave-Kimber-1
function epoch() {
  TESTREG="[\d{10}]"
  if [[ "$1" =~ $TESTREG ]]; then
    # is epoch
    date -d @$*
  else
    # is date
    if [ $# -gt 0 ]; then
      date +%s --date="$*"
    else
      date +%s
    fi
  fi
}
