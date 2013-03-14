#!/bin/bash

if [ $# -eq 0 ]; then
    echo "bup [FILE|DIR]";
    exit;
fi;

DATE=`date +%Y%m%d`;
#echo "$DATE";

if [ -f "$1" ]; then
    #echo "file";
    cp $1 $1.$DATE.bup;
fi;

if [ -d "$1" ]; then
    tar -cvzf $1.tar.gz $1;
fi;
