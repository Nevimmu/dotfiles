#/bin/sh
wallpaperFolder="~/Pictures/Wallpapers/"
randomWallpaper="$(ls -d ~/Pictures/Wallpapers | shuf -n 1)"
echo $randomWallpaper
wal -i $randomWallpaper