function fleshcode() --description "Either downloads & executes or updates fleshcode.py"
    if test ( $argv[1] == "update"; or test -f "~/.scripts/fleshcode.py" )
        curl "https://raw.githubusercontent.com/awendland/code-boilerplates/master/fleshcode.py" > ~/.scripts/fleshcode.py
    end
    if [ $argv[1] == "update" ]
        printf "fleshcode.py updated"
    else
        python ~/.scripts/fleshcode.py $argv
    end
end