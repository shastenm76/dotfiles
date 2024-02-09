#!/bin/bash
#
# navigation
up() {
	local d=""
	local limit="$1"

	# Default to limit of 1
	if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
		limit=1
	fi

	for ((i = 1; i <= limit; i++)); do
		d="../$d"
	done

	# perform cd. Show error if cd fails
	if ! cd "$d"; then
		echo "Couldn't go up $limit dirs."
	fi
}

# Redirection
alias ..="cd ../ && ls -l"
alias ...="cd .../ && ls -l"
alias ....="cd ..../ && ls -l"
alias .....="cd ...../ && ls -l"
alias ......="cd ....../ && ls -l"

# Directories
alias hm="cd $HOME && ls -lah"
alias ds="cd $HOME/Desktop && ls -l"
alias dc="cd $HOME/Documents && ls -l"
alias dn="cd $HOME/Downloads && ls -l"

# Dotfile shortcuts
alias brc="vim ~/.bashrc"
alias zrc="vim ~/.zshrc"
alias nvi="vim ~/.config/nvim/init.lua"
alias xre="vim ~/.Xresources"
alias sdk="vim ~/.config/sxhkd/sxhkdrc"

# ~/.config Directories
#
alias cf="cd ~/.config && ls -l"
alias dm="cd ~/.config/dmenu && ls -l"
alias dw="cd ~/.config/dwm && ls -l"
alias sl="cd ~/.config/slstatus && ls -l"

# ~/.local Directories
alias loc="~/.local/bin && ls -l"
alias scr="~/.local/bin/scripts && ls -l"
alias de="~/.local/bin/scripts/dmenu && ls -l"


