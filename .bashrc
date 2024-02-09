#!bin/bash

### EXPORT
export TERM="xterm-256color"            # getting proper colors
export HISTCONTROL=ignoredups:erasedups # no duplicate entries

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PROMPT
# This is commented out if using starship prompt
#PS1='[\u@\h \W]\$ '
#export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 4)\]\u\[$(tput setaf 5)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 4)\]]\[$(tput setaf 2)\]\\$ \[$(tput sgr0)\]"

[ -f ~/.bash/path.sh ] && source ~/.bash/path.sh
[ -f ~/.bash/shopt.sh ] && source ~/.bash/shopt.sh
[ -f ~/.bash/nav.sh ] && source ~/.bash/nav.sh
[ -f ~/.bash/ext.sh ] && source ~/.bash/ext.sh
[ -f ~/.bash/debian.sh ] && source ~/.bash/debian.sh
[ -f ~/.bash/sc.sh ] && source ~/.bash/sc.sh
[ -f ~/.bash/git.sh ] && source ~/.bash/git.sh
# [ -f ~/.bash/ac.sh ] && source ~/.bash/ac.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#Use neovim for vim if present
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

vf() { fzf | xargs -r -I $EDITOR %; }


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

. "$HOME/.cargo/env"

# tmux 
# command -v tmux >/dev/null 2>&1 || { sudo apt-get update && sudo apt-get install tmux -y; } && tmux
eval "$(zoxide init bash)"
eval "$(starship init bash)"
[[ -s /home/shasten/.autojump/etc/profile.d/autojump.sh ]] && source /home/shasten/.autojump/etc/profile.d/autojump.sh
