#! /bin/bash

pkill swayidle || swayidle -w \
timeout 10 'notify-send "I will lock!!" --app-name="presence" -t 200000' \
timeout 45 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
# timeout  'swaylock --indicator-radius 80 --indicator-thickness 20 -f -i /data/wallpapers/catppuccin/ds93gmkv2pca1.jpg' \
