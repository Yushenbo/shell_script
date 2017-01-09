#########################################################################
# File Name: create_slip.sh
#########################################################################
#!/bin/bash

if [  ! $1 ] || [  "--help" == $1 ]; then
	echo ""
	echo "Execute script with arguements like:"
	echo ""
	echo "create_slip.sh /dev/ttyX <IP_LOCAL> <IP_REMOTE>"
	echo ""
	exit 0
fi

if [  ! $2 ]; then
	echo "Need local ip address:"
	echo "try -h or --help option for help"
	exit 1
fi

if [  ! $3 ]; then
	echo "Need remote ip address:"
	echo "try -h or --help option for help"
	exit 1
fi

slattach $1 -p slip -s 115200 -m -d &

sleep 2

ifconfig sl0 $2 pointopoint $3 up

route add default gw $2
