#!/usr/bin/sh
# APP DEMON #
#-----------#
/usr/bin/unclutter &
/usr/bin/udiskie &
/usr/bin/dunst &
/usr/bin/picom &
# SYSTEMTRAY #
#------------#
/usr/bin/blueman-applet &
/usr/bin/nm-applet &
# OTHERS #
#--------#
xwallpaper --zoom ~/pix/wall/anime.png &
xset r rate 200 80 &
