#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\W $ '

alias v=nvim
alias ??="ytfzf "
#alias ??='YTFZF_EXTMENU_LEN=250 ytfzf -D '
alias tsm="transmission-remote"
alias n="nnn -de"

?() { w3m https://lite.duckduckgo.com/lite/?q="$*"; }
ll() { lynx https://lite.duckduckgo.com/html/?q="$*"; }
