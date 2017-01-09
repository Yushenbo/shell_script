#########################################################################
# File Name: create_slip.sh
#########################################################################
#!/bin/bash

if [  ! $1 ] || [  "--help" == $1 ]; then
	echo ""
	echo "execute script with arguements like:"
	echo ""
	echo "create_slip.sh /dev/ttyX <IP_LOCAL> <IP_REMOTE>"
	echo ""
	exit 0
fi

if [  ! $2 ]; then
	echo "need local ip address"
	echo "try --help option for help"
	exit 1
fi

if [  ! $3 ]; then
	echo "need remote ip address"
	echo "try --help option for help"
	exit 1
fi

exec ./conf_sl0.sh $2 $3 &

slattach $1 -p slip -s 115200 -m -d
