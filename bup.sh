#!/bin/bash

if [ $# -eq 0 ]; then
    echo "bup [FILE|DIR]";
    exit;
fi;

DATE=`date +%Y%m%d`;

if [ -f "$1" ]; then
    cp $1 $1.$DATE.bup;
fi;

if [ -d "$1" ]; then
    tar -cvzf $1.$DATE.tar.gz $1;
fi;
