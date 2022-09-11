#! /usr/bin/bash

#master volume off or on recognise
if [ $(amixer -c 1 | grep -m1 -P '\[o' | cut -c37-) == "[on]" ]
then	
	amixer -q -c 1 set Master toggle
	amixer -q -c 1 set Headphone toggle
elif [ $(amixer -c 1 | grep -m1 -P '\[o' | cut -c37-) == '[off]' ]
then
	amixer -q -c 1 set Master toggle
	amixer -q -c 1 set Speaker toggle
	amixer -q -c 1 set Headphone toggle
else
	echo "Error while trying to toggle volume" | dmenu
fi

#kill sleep instance of bar
pkill -P $(cat /home/$USER/scripts/bar.pid) sleep
