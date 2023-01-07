#!/bin/sh


xrandr --setprovideroutputsource 1 0
xrandr --auto
xrandr --newmode "1920x1080_360.00"  1314.50  1920 2104 2312 2704  1080 1083 1088 1351 -hsync +vsync
xrandr --addmode eDP-1-1 "1920x1080_360.00"  

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





# steven
setxkbmap gb &
xsetroot -cursor_name left_ptr &



# keybinds
sxhkd &

# brightness
brillo -e -q -S 90 &


exec bspwm
