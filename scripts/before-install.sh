#!/bin/bash
export FOLDER=/home/ubuntu/app

if [ -d $FOLDER ]
then
 rm -rf $FOLDER
fi

mkdir -p $FOLDER