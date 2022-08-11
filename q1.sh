#!/bin/bash

lines=$(cat $1 | wc -l)
lines=$((lines+1))

if [ $((lines%2))==1 ]
then 
    lines=$(($lines+1))
fi

lines=$((lines/2))

cat $1 | awk 'NR == '$lines' {print;exit}'