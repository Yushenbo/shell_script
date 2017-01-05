#########################################################################
# File Name: menu.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 16时43分31秒
#########################################################################
#!/bin/bash

function press_enter
{
	echo ""
	echo -n "Press Enter to continue"
	read
	clear
}

selection=
until [  "$selection" = "0" ]; do
	echo ""
	echo "PROGRAM MENU"
	echo "1 - display free disk space"
	echo "2 - display free memory"
	echo ""
	echo "0 - exit program"
	echo ""
	echo -n "Enter selection: "
	read selection
	echo ""
	case $selection in
		1 ) df ; press_enter ;;
		2 ) free; press_enter ;;
		0 ) exit ;;
		* ) echo "Plsease enter 1, 2, or 0"; press enter
	esac
done
