
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Variables/Defaults
EDITOR=nvim
BROWSER=firefox

# activate vi mode in bash
set -o vi

# run neofetch
neofetch

# terminal files stuff
alias ls='ls --color=auto'
alias la='ls -a'
alias l='ls -lh'
alias ll='ls -alh'
alias grep='grep --color=auto'
alias rmr='sudo rm -r'
alias scp='sudo cp'
alias cpr='cp -r'
alias scpr='sudo cp -r'

# pacman & yay
alias pi='sudo pacman -S'
alias pr='sudo pacman -Rs'
alias ps='pacman -Ss'
alias pq='pacman -Q'
alias pqi='pacman -Qi'
alias pu='sudo pacman -Syu'
alias pc='sudo pacman -Sc'
alias pqo='pacman -Qdt'
alias yi='yay -S'
alias ys='yay -Ss'
alias yu='yay -Syu'
alias ref='sudo reflector -c france --latest 10 --sort rate --save /etc/pacman.d/mirrorlist'


# power management
alias po='sudo poweroff'
alias rb='sudo reboot'

# suckless stuff
alias m='make'
alias mc='make clean && sudo rm config.h'
alias mic='sudo make install clean && rm config.h'

# usb actions
alias musb='sudo mount /dev/sdc1 /media/usb'
alias uusb='sudo umount /dev/sdc1'
alias eusb='sudo eject /dev/sdc'

# vim shortcuts
alias vi='nvim'
alias svi='sudo nvim'
alias vib='nvim ~/.bashrc'
alias vix='nvim ~/.xinitrc'

# other stuff
alias xwz='xwallpaper --zoom'
alias sbrc='source ~/.bashrc'
alias sx='startx'
alias yt='yt-dlp'
alias df='df -h'
alias kfdm='pkill -e fdm'
alias ssystemctl='sudo systemctl'
alias vic='vim ~/.config/i3/config'


PS1='[\u@\h \W]\$ '
