#!/bin/bash
notify-send 'Grim' 'Make a selection' --icon='/usr/share/icons/Papirus-Light/16x16/places/folder-photo.svg'
slurp | grim -g- -s1 ~/Pictures/screenshots/scrot-$(date +"%Y-%m-%d-%H-%M-%S").png 
notify-send 'Grim' 'Screenshot saved' --icon='/usr/share/icons/Papirus-Light/16x16/places/folder-photo.svg'
