#/bin/sh
wallpaperFolder="/home/nevimmu/Pictures/Wallpapers"

wallpaper=$(ls $wallpaperFolder | dmenu)

if [ -z "$wallpaper" ]; then
	exit
else
	wal -i $wallpaperFolder/$wallpaper
fi
