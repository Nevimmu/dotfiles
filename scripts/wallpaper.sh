#/bin/sh
wallpaperFolder="/home/nevimmu/Pictures/Wallpapers"

wallpaper=$(ls $wallpaperFolder | dmenu)

wal -i $wallpaperFolder/$wallpaper