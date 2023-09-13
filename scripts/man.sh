man -k . | dmenu -l 20 | awk  {print } | xargs -r man .
