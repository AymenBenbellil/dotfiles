man -k . | dmenu -l 20 | awk  '{print $1}' | xargs -r st -e man
