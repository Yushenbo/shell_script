#########################################################################
# File Name: auto-patch.sh
# Author: Nichol.Shen
# mail: nichol_shen@yahoo.com
# Created Time: 2016年09月29日 星期四 13时08分56秒
#########################################################################
#!/bin/bash

key1="Bluetooth:"
key2="bluetooth:"
key3="Revert"
file=""
GENDIR="generate"
i=1

if [ ! $1  ];then
    echo "ERROR!!!"
    echo "need parse file."
    exit
fi

file="$1.cmt"

if [ ! -d $GENDIR  ];then
    mkdir $GENDIR
fi

cp $1 $GENDIR/
cd $GENDIR/

if [ -f "$file"  ];then
    rm $file
    touch $file
fi

cat $1 | while read line
do
    arg=`echo $line | awk '{print $2}'`
    if [[ $arg == $key1  ]] || [[ $arg == $key2  ]] || [[ $arg == $key3  ]];then
        echo $line >> $file
    fi

done

if [ -d $file-patches  ];then
    rm -rf $file-patches/*
else
    mkdir -p "$file-patches"
fi

if [[ $2 == "D"  ]];then
    `sed -i '167d' $file`
    `sed -i '167d' $file`
fi

cnt=`cat $file | wc -l`
echo "CULUM : $cnt"

for commit in `awk '{print $1}' $file`
do
    let num=$cnt-$i+1
    git format-patch $commit -1
    pn=`ls 0001*.patch`
    mv $pn "$file-patches/`printf "%04d" $num`-${pn:5}"
    ((i++))
done

echo ""
echo ""

ls $file-patches/

((i--))
echo $i
