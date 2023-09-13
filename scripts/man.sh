man -k . | dmenu -l 20 | awk  '{print $1}' | xargs -r alacritty -e man
