#########################################################################
# File Name: loop_until.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 16时40分47秒
#########################################################################
#!/bin/bash

number=0

until [  $number -ge 10 ]; do
	echo "Number = $number"
	number=$((number + 1))
done
