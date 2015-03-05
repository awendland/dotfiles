#!/usr/bin/env python
import re

commands = {
}

def parse_cmds(text, type, parse_name_func):
	lines = text.split("\n")
	cur_group = ""
	while lines:
		line = lines.pop(0)
		line_start = line[:3]
		if len(line) == 0:
			pass
		elif "#I" in line_start:
			lines.pop(0)
		elif "#H" in line_start:
			cur_group = line.split("#H ")[1]
			commands[cur_group] = {}
		elif "#A" in line_start:
			desc = line.split("#A ")[1]
			next_line = lines.pop(0)
			while (type + " ") not in next_line:
				next_line = lines.pop(0)
			cmd_name, cmd_cmd = parse_name_func(next_line)
			commands[cur_group][cmd_name] = {
				"name": cmd_name,
				"desc": desc,
				"cmd": cmd_cmd
			}
		else:
			pass
			# print("WTF => " + line)

with open('.bash_aliases') as file:    
    parse_cmds(file.read(), "alias", lambda line: re.search('alias (.+?)=\'(.+)\'', line).groups())

with open('.bash_functions') as file:    
    parse_cmds(file.read(), "function", lambda line: (re.search('function (.+?)\(\) \{', line).group(1), "function"))

class colors:
    BG_WHITE = '\033[47m'
    BG_YELLOW = '\033[43m'
    PURPLE = '\033[35m'
    RED = '\033[31m'
    BLACK = '\033[30m'
    BLINK = '\033[5m'
    UNDERLINE = '\033[4m'
    END = '\033[0m'

for header in sorted(commands):
	print("\n" + colors.BG_WHITE + colors.BLACK + "### " + header + colors.END)
	for k, alias in sorted(commands[header].iteritems()):
		print(" " + colors.RED + alias['name'] + colors.END + " : " + colors.PURPLE + alias['desc'])

