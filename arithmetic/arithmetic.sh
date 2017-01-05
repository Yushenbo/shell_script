#########################################################################
# File Name: arithmetic.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 15时57分12秒
#########################################################################
#!/bin/bash

first_num=0
second_num=0

set -x
echo -n "Enter the first number --> "
read first_num
echo -n "Enter the second number --> "
read second_num

echo "first number + second number = $((first_num + second_num))"
echo "first number - second number = $((first_num - second_num))"
echo "first number x second number = $((first_num * second_num))"
echo "first number / second number = $((first_num / second_num))"
echo "first number % second number = $((first_num % second_num))"
echo "first number raised to the"
echo "power of the second number = $((first_num ** second__num))"
set +x
