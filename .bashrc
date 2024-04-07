#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#alias ??='YTFZF_EXTMENU_LEN=250 ytfzf -D '
alias ??='ytfzf '
alias vim=nvim

# w3m-ddg
?() { w3m https://lite.duckduckgo.com/lite/?q="$*"; }

# lynx-ddg pure HTML
ll() { lynx https://lite.duckduckgo.com/html/?q="$*"; }

#PS1='[\u@\h \W]\$ '
#PS1='\h \W\$ '
PS1='\W \$ '
