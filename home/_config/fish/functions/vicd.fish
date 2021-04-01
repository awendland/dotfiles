function vicd -d "Use vifm and cd to its current directory on close"
    # Based on https://wiki.vifm.info/index.php/How_to_set_shell_working_directory_after_leaving_Vifm

    test -z "$argv" && set -l argv (pwd)
    set -l dst (command vifm --choose-dir - "$argv")

    if test -z "$dst"
        echo 'Directory picking cancelled/failed'
        return 1
    end

    cd "$dst"
end
