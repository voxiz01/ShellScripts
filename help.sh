#! /usr/bin/bash

case $1 in "wifi") echo "Check to see if you wifi device is softblocked via 'rfkill -n'." 
		echo "If your device is not blocked use 'nmcli c' to list possible connections."
		echo "If you already had a connection to one of the listed options and want to connect use 'nmcli con up id <name>'." 
		echo "If no PEAP or other complicated protocolls are used connect via 'nmcli dev wifi connect <name>'." 
		echo "Else you need to add the connection with parameters before successfully connecting."
		echo "Example: "
		echo "        nmcli connection add \ "
		echo "        type wifi con-name '<name>' ifname wlp3s0 ssid '<name>' -- \ "
		echo "        wifi-sec.key-mgmt wpa-eap 802-1x.eap tls 802-1x.identity '<yourname>' \ "
		echo "        802-1x.ca-cert ~/ca.pem 802-1x.client-cert ~/cert.pem \ "
		echo "        802-1x.private-key-password '<yourpassword>' 802-1x.private-key ~/key.pem ";;
	*) echo "Please parse parameter as follow to the script: wifi";;
esac
 
