!/bin/sh

sudo pkill sxhkd && sxhkd &
wal -R &
compton --config ~/.config/compton/compton.conf &

sleep 10

while true; do
   battery=$(acpi -b | awk '/Battery 0/ {print $4}' | cut -d',' -f1)
   charging=$(acpi -a | awk '{print $3}')
   vol=$(amixer get Master | grep 'Front Left:' | awk '{print $5}' | cut -d"[" -f 2 | cut -d"]" -f 1)
   mute=$(amixer get Master | grep 'Front Left:' | awk '{print $6}' | cut -d"[" -f 2 | cut -d"]" -f 1)

   # Mute icon
   if [ "$mute" = "off" ]
   then
	   vol=' 婢 '$vol
   else
	   vol='  '$vol
   fi

   # Battery icon
   if [ "$charging" = "on-line" ]
   then
      battery=' '$battery
   else
      battery=' '$battery
   fi
   xsetroot -name " $vol | $battery | $(date +"%H:%M")"
   sleep 0.5    # Update time
done &
