#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi


wal -i "$HOME/wallpaper/current" -o wal-set && wal -R 
#xset +fp /usr/share/fonts

#exec dwm
exec bspwm
