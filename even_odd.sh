#########################################################################
# File Name: even_odd.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 16时05分52秒
#########################################################################
#!/bin/bash

number=0

set -x
echo -n "Enter number > "
read number

echo "Number is $number"
if [  $((number % 2)) -eq 0 ]; then
	echo "Number is even"
else
	echo "Number is odd"
fi
set +x
