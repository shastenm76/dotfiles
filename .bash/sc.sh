#!/bin/bash
#
### ALIASES ###
# neovim 
alias v="nvim"

# make
alias mi="sudo make clean install"
alias rch="sudo rm -rf config.h"

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias l.='exa -a | egrep "^\."'

# Tmux 
alias x="exit"
alias ll="sm-lower"
alias rr="sm-right"
alias uu="sm-upper"
alias tl="tmux ls"

# Tmuxifier
alias tmd="tmuxifier delete"
alias tmn="tmuxifier new"
alias tms="tmuxifier switch"
alias tli="tmuxifier list"
 
# Bash Shell Commands
# These following commands are stored in /usr/local/bin
# Top Ten | fuzzy finder python | fuzzy finder for tmux
alias bh="sm-bash-history"
alias fp="sm-fzf-python"
alias ft="sm-files"
alias lt="sm-bash-lt"
alias pd="sm-past-dir"

# apps that are redirected with fpp
alias dm="sm-dm"
alias bi="sm-bin"

# Adding some functionality for Ed Text Editor
alias ed="ed -p':' "

# adding flags
alias df='df -h'     # human-readable sizes

alias free='free -m' # show sizes in MB

#Common Commands
alias bp="bpython"
alias cm="sudo chmod"
alias cmm="sudo chmod 777"
alias cmx="sudo chmod +x"
alias co="sudo chown -R shasten:shasten"
alias p="python3"
alias penv="python3 -m venv"
alias pi="python3 -m pip install"
alias prun="python3 manage.py runserver"
alias t="sudo touch"
alias s="sudo"
alias su="sudo -s"

# Tmux and Zellij
alias tm="tmux"
alias z="zellij"

#alias su="sudo su"
alias mkd="sudo mkdir -pv"
alias rm="sudo rm -rf"
alias SS="sudo systemctl"
alias pff="sudo poweroff"
alias xb="xrdb -merge ~/.Xresources"

#MISC
alias yt="ytfzf -D"
alias ytt="ytfzf -t"

#Grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

#Readable output
alias df="df -h"

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#hardware info
#Show all unused memory
alias free="free -mt"
alias hw="hwinfo --short"

#update grub
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"


# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# bare git repo alias for dotfiles
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME/"

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"


# NordVPN
alias cities="sudo nordvpn cities"
alias countries="sudo nordvpn countries"
alias connectme="sudo nordvpn connect"
# END

