#! /usr/bin/bash

case $(rfkill -n) in
	"blocked") rfkill unblock 1;;
	"unblocked") rfkill block 1;;
	*) rfkill unblock 1;;
esac
