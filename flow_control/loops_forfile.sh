#########################################################################
# File Name: loops_forfile.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 17时44分51秒
#########################################################################
#!/bin/bash

for filename in $@; do
	result=
	if [  -f $filename ]; then
		result="$filename is a regular file"
	else
		if [  -d $filename ];then
			result="$filename is a directory"
		fi
	fi

	if [  -w $filename ]; then
		result="$result and it is writable"
	else
		result="$result and it is not wtitable"
	fi
	echo "$result"
done
