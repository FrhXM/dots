#!/usr/bin/sh
# APP DEMON #
#-----------#
/usr/bin/unclutter &
/usr/bin/udiskie -s -N &
/usr/bin/dunst &
/usr/bin/picom &
# SYSTEMTRAY #
#------------#
/usr/bin/blueman-applet &
/usr/bin/nm-applet &
# OTHERS #
#--------#
xwallpaper --zoom ~/pix/wall/fav.jpg &
xset r rate 200 80 &
