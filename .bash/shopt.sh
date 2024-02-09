#!/bin/bash
#
### SHOPT
shopt -s autocd  # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dirspell # attempts spelling correction 
shopt -s dotglob # matching . and .. explicitly
shopt -s extglob # matching . and .. explicitly
shopt -s extquote # matching . and .. explicitly
shopt -s expand_aliases # expand aliases
shopt -s globstar # matching . and .. explicitly
shopt -s histappend     # do not overwrite history

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"
