#########################################################################
# File Name: home_space.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 15时37分09秒
#########################################################################
#!/bin/bash

function home_space
{
	# Only the superuser can get thos information

	if [ "$(id -u)" = "0" ];then
		echo "Home directory"
		echo "Bytes Directory"
		du -s /home/* | sort -nr
	else
		echo "You must be the superuser to run this script" >&2
		exit 1
	fi
}

$(home_space)
