#! /bin/bash

dir=$1
wallpapers=($(find ${dir} | rg ".*\.(jpg|png)"))

if [[ ! $(pidof swww-daemon) ]]; then
    swww init
    sleep 5
fi

while true; do
    random=${wallpapers[ $RANDOM % ${#wallpapers[@]} ]}
    swww img ${random} --transition-step 80 --transition-type wipe --transition-angle 240
    wal -i ${random}
    notify-send "Changed wallpaper to $(basename -- ${random})"
    sleep 1200
done
