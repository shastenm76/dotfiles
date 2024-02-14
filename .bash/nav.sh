#!/bin/bash
#
# navigation

u() {
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
    else
        # list contents of the current directory after moving up
        ls -lah
    fi
}


d() {
    local dirs=($(find . -maxdepth 1 -type d -printf "%f\n"))
    local limit="$1"

    # Default to limit of 1
    if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
        limit=1
    fi

    PS3="Choose a directory to move into (a-z): "
    
    # Map letters to directories
    local letter_map=()
    for i in {a..z}; do
        letter_map+=("$i")
    done
    
    # Print formatted list
    for ((i = 0; i < ${#dirs[@]}; i++)); do
        echo "${letter_map[i]}) ${dirs[i]}"
    done

    read -r -n 1 -p "Enter the letter of the directory to move into: " letter
    echo

    if [[ "${letter}" =~ [a-z] ]]; then
        dir="${dirs[$(( $(printf "%d" "'$letter") - $(printf "%d" "'a") ))]}"
        
        for ((i = 1; i <= limit; i++)); do
            cd "$dir" || return 1
        done
        ls -lah
    else
        echo "Invalid option. Please choose a directory."
    fi
}

# Directories
alias ds="cd $HOME/Desktop && ls -l"
alias dc="cd $HOME/Documents && ls -l"
alias dn="cd $HOME/Downloads && ls -l"

# Dotfile shortcuts
alias brc="vim ~/.bashrc"
alias zrc="vim ~/.zshrc"
alias xre="vim ~/.Xresources"
#alias sdk="vim ~/.config/sxhkd/sxhkdrc"

# ~/.config Directories
#
alias cf="cd ~/.config && ls -l"

# ~/.local Directories
alias loc="~/.local/bin && ls -l"


