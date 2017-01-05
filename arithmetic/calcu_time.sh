#########################################################################
# File Name: calcu_time.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 16时14分23秒
#########################################################################
#!/bin/bash

seconds=0
set -x
echo -n "Enter number of seconds > "
read seconds

hours=$((seconds / 3600))
seconds=$((seconds % 3600))
minutes=$((seconds / 60))
seconds=$((seconds % 60))

echo "$hours hour(s) $minutes minute(s) $seconds second(s)"
set +x
