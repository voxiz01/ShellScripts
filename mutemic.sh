#! /usr/bin/bash

amixer set Capture toggle -D pulse

pkill -P $(cat /home/$USER/scripts/bar.pid) sleep
