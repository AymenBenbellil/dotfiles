#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# Declare The Wallpaper Variable
wallpaper=~/wallpapers/destiny.png

# Set The Wallpaper
xwallpaper --zoom $wallpaper

# Pywal
wal -i $wallpaper

# Enable Picom
#picom -f & 

# Run dwmblocks
dwmblocks &

# Select & Run The Window Manager
exec dwm

# Start PulseAudio 
pulseaudio &
