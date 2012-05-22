# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color -F'

alias vi='vim'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc; source ~/.bashrc'

alias tmux="tmux -2"

export EDITOR=vim

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PATH="$PATH:."
