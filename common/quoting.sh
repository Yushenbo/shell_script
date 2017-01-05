#########################################################################
# File Name: quoting.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 14时35分52秒
#########################################################################
#!/bin/bash

TITLE="System Information for $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %z")
TIME_STAMP="Update on $RIGHT_NOW by $USER"

echo "My host name is $HOSTNAME"
echo $TITLE
echo $TIME_STAMP
