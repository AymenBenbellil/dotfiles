
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias l='ls -lh'
alias ll='ls -alh'
alias grep='grep --color=auto'
alias pi='doas pacman -S'
alias pr='doas pacman -Rs'
alias ps='pacman -Ss'
alias pu='doas pacman -Syu'
alias yi='yay -S'
alias ys='yay -Ss'
alias yr='yay -Rs'
alias yu='yay -Syu'
alias po='doas poweroff'
alias rb='doas reboot'
alias mic='doas make install clean'
alias mtusb='doas mount /dev/sdc1 /media/usb'
alias sx='startx'
alias vi='vim'
alias dvi='doas vim'
alias xwz='xwallpaper --zoom'
alias sbrc='source ~/.bashrc'

PS1='[\u@\h \W]\$ '
