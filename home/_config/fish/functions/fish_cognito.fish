function fish_cognito -d "Open up a new fish shell that won't save any commands to history"
    env fish_history='' fish
end
