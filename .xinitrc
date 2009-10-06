#!/bin/sh
if [ -f $HOME/.xresources ]; then
  xrdb -merge $HOME/.xresources
fi
 
if [ -f $HOME/.xmodmap ]; then
  xmodmap $HOME/.xmodmap
fi

quartz-wm --only-proxy &
xsetroot -solid black &
urxvtd -q -o &

xset -b
xset +fp /opt/local/share/fonts/
xset fp rehash

while true
do
  xsetroot -name "$(uptime | sed 's/.*,//')"
  sleep 10
done &
dwm
