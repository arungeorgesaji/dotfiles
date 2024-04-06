#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias flstudio='grep '^Exec=' ~/.local/share/applications/flstudio.desktop | sed 's/^Exec=//' | sed 's/%.//' | sh'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias icat='kitty +kitten icat'
alias clear='clear && neofetch'
PS1='[\u@\h \W]\$ '
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
neofetch
