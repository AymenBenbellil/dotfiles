#!/bin/sh

# declare variables
wallpaper=~/wallpapers/astro.jpg

# start the network manager applet
nm-applet &

# keyboard changes
setxkbmap -layout us,ara -option grp:sclk_toggle -option caps:escape

# status for dwm
dwmblocks &

# set a wallpaper
xwallpaper --zoom $wallpaper

# Window Manager
exec dwm
