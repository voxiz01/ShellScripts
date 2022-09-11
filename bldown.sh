#! /usr/bin/bash

if [ $(ls -l /sys/class/backlight/amdgpu_bl0/brightness | cut -b 1-10) != -rw-rw-rw- ]
then echo "Not enough permissions. Update permissions for /sys/class/backlight/amdgpu_bl0/brightness via sudo chmod go+w " | dmenu
else
	CURBRI=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
	MAXBRI=255
	MINBRI=15

	if [ $MINBRI -ge $(($CURBRI - 15)) ]
	then NEWBRI=$MINBRI
	else NEWBRI=$(($CURBRI - 15))
	fi

	#set /sys/class/backlight/amdgpu_bl0/brightness to $NEWBRI
	echo $NEWBRI > /sys/class/backlight/amdgpu_bl0/brightness

	#kill sleep instance of bar
	pkill -P $(cat /home/$USER/scripts/bar.pid) sleep
fi


