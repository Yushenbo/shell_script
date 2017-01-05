#########################################################################
# File Name: condition.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 15时23分08秒
#########################################################################
#!/bin/bash

if [  -f shell_func.sh ]; then
	echo "find shell_func.sh"
else
	echo "Yikes! You have no .shell_func.sh"
fi

if [  -f shell_func.sh ]
then echo "Find shell_func.sh"
else echo "Yikes! no shell_func.sh"
fi
