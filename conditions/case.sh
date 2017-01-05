#########################################################################
# File Name: case.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2017年01月05日 星期四 16时33分30秒
#########################################################################
#!/bin/bash

echo -n "Type a digit or a letter > "
read character
case $character in
	[a-z] | [A-Z] ) echo "You typed the letter $character"
		;;
	
	[0-9] )			echo "You typed the digit $character"
		;;
	
	* )				echo "You did not type a letter or digit"
esac

