#!/bin/bash
#
### PATH
export PATH="/home/shasten/applications:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/shasten/bin:$PATH"
export PATH="/home/shasten/snap:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:${GOPATH//://bin:}/bin"
export PATH="$PATH:${PYTHONPATH//://bin:}/bin"
export PYTHONPATH=${PYTHONPATH}:"${HOME}/Documents/dev/python"
export PYTHONPATH=${PYTHONPATH}:"${HOME}/.local/bin/python3"
export PYTHONPATH=${PYTHONPATH}:"/usr/bin/env/python3"

if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.bin" ]; then
	PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "/usr/local.go/bin" ]; then
	PATH="/usr/local.go/bin:$PATH"
fi

if [ -d "$HOME/Applications" ]; then
	PATH="$HOME/Applications:$PATH"
fi

