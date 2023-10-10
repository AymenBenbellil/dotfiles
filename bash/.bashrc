# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Variables/Defaults
EDITOR=nvim
BROWSER=firefox

# activate vi mode in bash
set -o vi

# run neofetch
#neofetch

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
alias pi='sudo pacman -S' # Pacman Install
alias py='sudo pacman -Syy' # Pacman Install
alias pr='sudo pacman -Rs' # Pacman Remove
alias ps='pacman -Ss' # Pacman Search
alias pq='pacman -Q' # Pacman Query
alias pqi='pacman -Qi' # Pacman Query Installed
alias pqo='pacman -Qdt' # Pacman Query a certain program
alias pu='sudo pacman -Syu' # Pacman Update
alias pc='sudo pacman -Sc' # Pacman Clear cache
alias yi='yay -S' # Yay Install
alias ys='yay -Ss' # Yay Search
alias ref='sudo reflector -c France --latest 10 --sort rate --save /etc/pacman.d/mirrorlist'

# power management
alias po='sudo poweroff' # PowerOff
alias rb='sudo reboot' # ReBoot

# suckless stuff
alias m='make'
alias mc='make clean && sudo rm config.h'
alias mic='sudo make install clean && rm config.h'

# usb actions
alias musb='sudo mount /dev/sdc1 /media/usb' # Mount USB
alias uusb='sudo umount /dev/sdc1' # Unmount USB
alias eusb='sudo eject /dev/sdc' # Eject USB
alias mwin='sudo mount /dev/sda1 /mnt/win/' # mount your windows C: drive

# vim shortcuts
alias vi='nvim'
alias svi='sudo nvim'
alias vib='nvim ~/.bashrc'
alias vix='nvim ~/.xinitrc'
alias mir='sudo nvim /etc/pacman.d/mirrorlist'

# other stuff
alias xwz='xwallpaper --zoom'
alias sbrc='source ~/.bashrc'
alias sx='startx'
alias yt='yt-dlp'
alias df='df -h'
alias kfdm='pkill -e fdm'
alias ssystemctl='sudo systemctl'
alias vic='vim ~/.config/i3/config'
alias cpio='sudo mkinitcpio -P'

#PS1='[\u@\h \W]\$ '
PS1="\[\033[1;34m\] 󰣇 \[\e[1;35m\] \w \[\e[1;32m\] \[\e[1;37m\] "
