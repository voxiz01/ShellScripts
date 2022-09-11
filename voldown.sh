#! /usr/bin/bash

#TODO master volume upd lower
amixer --card=1 set PCM 5%- > /dev/null

pkill -P $(cat /home/$USER/scripts/bar.pid) sleep
