#########################################################################
# File Name: loops_for.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 17时33分57秒
#########################################################################
#!/bin/bash

count=0

for i in $(cat ~/.bashrc); do
	count=$((count + 1))
	echo "Word $count ($i) contains $(echo -n $i | wc -c) characters"
done
