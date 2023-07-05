
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias l='ls -lh'
alias ll='ls -alh'
alias grep='grep --color=auto'
alias pi='sudo pacman -S'
alias pr='sudo pacman -Rs'
alias ps='pacman -Ss'
alias pq='pacman -Q'
alias pu='sudo pacman -Syu'
alias yi='yay -S'
alias ys='yay -Ss'
alias yr='yay -Rs'
alias yu='yay -Syu'
alias po='sudo poweroff'
alias rb='sudo reboot'
alias m='make'
alias mic='sudo make install clean'
alias mtusb='sudo mount /dev/sdc1 /media/usb'
alias sx='startx'
alias vi='vim'
alias svi='sudo vim'
alias rmr='sudo rm -r'
alias xwz='xwallpaper --zoom'
alias szrc='source ~/.zshrc'
alias srmc='sudo rm config.h'

PS1='[\u@\h \W]\$ '
