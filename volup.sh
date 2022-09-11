#! /usr/bin/bash

#TODO master volume upd higher
amixer --card=1 set PCM 5%+ > /dev/null

pkill -P $(cat /home/$USER/scripts/bar.pid) sleep
