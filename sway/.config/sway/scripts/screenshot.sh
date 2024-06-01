#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')
 
grimshot="/usr/bin/grimshot"

case $selected in
  active)
    wl-copy < $(/usr/bin/grimshot --notify save active);;
  screen)
    wl-copy < $(/usr/bin/grimshot --notify save screen);;
  output)
    wl-copy < $(/usr/bin/grimshot --notify save output);;
  area)
    wl-copy < $(/usr/bin/grimshot --notify save area);;
  window)
    wl-copy < $(/usr/bin/grimshot --notify save window);;
esac
