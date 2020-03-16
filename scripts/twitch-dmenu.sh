#!/bin/sh

account=nevimmu
channels=$(twitchnotifier -c $account -n)
nb_channels=$(echo $channels | wc -w)

dmenufont="FiraCode Nerd Font:size 11"
dmenucolor="#6B3799"

if [ -z "$channels" ]; then
	exit
else
	chosen="$(echo "$channels" | dmenu -l "$nb_channels" -fn "$dmenufont" -sb "$dmenucolor" -p "Twitch")"
	if [ -z "$chosen" ]; then
		exit
	fi
	mpv https://www.twitch.tv/"$chosen" &
	surf https://www.twitch.tv/popout/"$chosen"/chat?popout= &
fi
