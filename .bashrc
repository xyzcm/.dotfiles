#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\W $ '

# Environment
export TERM="st-256color"
export SHELL=/bin/bash
export EDITOR=nvim
export SUDO_EDITOR=nvim
export SUDO_EDITOR=/usr/bin/nvim
export VISUAL=nvim
export TERMINAL=st

# alias
alias x=exit
alias b=brightness
alias vifmrun=~/.config/vifm/scripts/vifmrun
alias outto='loginctl terminate-user jong'
alias rboot='sudo reboot'
alias off='sudo poweroff'

# terminal browsers
?() { w3m https://lite.duckduckgo.com/lite/?q="$*"; }
ll() { lynx https://lite.duckduckgo.com/html/?q="$*"; }
