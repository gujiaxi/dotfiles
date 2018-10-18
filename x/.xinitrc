#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# map CapsLock to Ctrl (long-pressed) and Escape (short-pressed)
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

export GTK_IM_MODULE="fcitx"
export  QT_IM_MODULE="fcitx"
export    XMODIFIERS="@im=fcitx"

exec i3
