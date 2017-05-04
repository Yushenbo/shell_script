#-*- coding:utf-8 -*-
#########################################################################
# File Name: target.py
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
#########################################################################
#!/usr/bin/python

import sys
import os

f = open('test.txt','w')

for i in range(10):
    f.write(str(i)+',')
f.write('\n')

f.close
