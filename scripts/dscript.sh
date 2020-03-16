#!/bin/sh

dmenucolor="#6B3799"

folder=$HOME/scripts
hint="dmenu.sh"
scripts="$(ls "$folder" | grep "$hint")"
nb_scripts="$(echo "$scripts" | wc -w)"

chosen="$(echo "$scripts" | dmenu -l "$nb_scripts" -sb "$dmenucolor" -p "Scripts")"

if [ -z "$chosen" ]; then
       exit
else
	. "$folder"/"$chosen"
fi
