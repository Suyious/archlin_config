#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#git-completion
source /usr/share/bash-completion/completions/git

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

git_branch() { #extracting git branch
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

neofetch
##SETTING BASH PROMPT

#working directory in pink
PS1='\[\033[01;95m\]\w'
#git branch in blue
PS1="$PS1"'\[\033[01;34m\]$( git_branch)' 
#arrow prompt in cyan
PS1="$PS1"'\[\033[01;36m\] ➜'
#input in white
PS1="$PS1"' \[\033[01;00m\]'
