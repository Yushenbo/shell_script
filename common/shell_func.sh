#########################################################################
# File Name: shell_func.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 14时52分10秒
#########################################################################
#!/bin/bash

#systemd_page - A script to produce an system information HTML file

##### Constants 

TITLE="System Information for $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

##### Functions

function system_info
{
	# Temporary function stub
	echo "function system_info"
}

function show_uptime
{
	# Temporary function stub
	echo "function show_uptime"
	uptime
}

function drive_space
{
	# Temporary function stub
	echo "function drive_space"
}

function home_space
{
	# Temporary function stub
	echo "function home_space"
}


###### Main

cat <<- _EOF_
	<html>
	<head>
		<title>$TITLE</title>
	</head>

	<body>
		<h1>$TITLE</h1>
		<p>$TIME_STAMP</p>
		$(system_info)
		$(show_uptime)
		$(drive_space)
		$(home_space)
	</body>
	</html>
_EOF_
