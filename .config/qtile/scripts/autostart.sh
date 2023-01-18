#!/usr/bin/sh
# APP DEMON #
#-----------#
/usr/bin/udiskie -s -N &
/usr/bin/unclutter &
/usr/bin/dunst &
/usr/bin/picom &
# SYSTEMTRAY #
#------------#
/usr/bin/nm-applet &
#/usr/bin/blueman-applet &
# OTHERS #
#--------#
xwallpaper --zoom ~/pix/wall/myGirl2.jpg &
xset r rate 200 80 &
