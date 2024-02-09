#!/bin/bash

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"


#Pacman And AUR
alias sp="sudo pacman -S"
alias sy="sudo pacman -Sy"
alias syu="sudo pacman -Syu"
alias syy="sudo pacman -Syy"
alias syyu="sudo pacman -Syyu"
alias ss="sudo pacman -Ss"
alias spr="sudo pacman -R"
alias rs="sudo pacman -Rs"
alias rsn="sudo pacman -Rsn"
alias rdd="sudo pacman -Rdd"
alias sc="sudo pacman -Scn"
alias cleanup="sudo pacman -Rns $(pacman -Qtdq)"
alias U="sudo pacman -U"
alias yts="yay -S"
alias yup="yay -Syu --noconfirm"

#unlocks
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias rmlogoutlock="sudo rm /tmp/arcologout.lock"

