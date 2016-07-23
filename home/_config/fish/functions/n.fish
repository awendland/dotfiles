function n --description 'Execute a local node_module/.bin program'
	set -l cmd $argv[1]
	set -e argv[1]
	set -l node_bin (npm bin)
	set -l cmd_path $node_bin/$cmd
	if test -e $cmd_path
		eval (npm bin)/$cmd (string escape -- $argv)
	else
		echo -s "Command can't be found at " $cmd_path
	end
end
