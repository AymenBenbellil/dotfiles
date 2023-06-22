
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
alias ps='sudo pacman -Ss'
alias pu='sudo pacman -Syu'
alias yi='yay -S'
alias ys='yay -Ss'
alias yr='yay -Rs'
alias yu='yay -Syu'
alias po='sudo poweroff'
alias rb='sudo reboot'
alias mic='sudo make install clean'
alias mi='sudo make install'
alias mtusb='sudo mount /dev/sdc1 /media/usb'
alias sx='startx'
alias vi='nvim'
alias svi='sudo nvim'
alias xwz='xwallpaper --zoom'

PS1='[\u@\h \W]\$ '
