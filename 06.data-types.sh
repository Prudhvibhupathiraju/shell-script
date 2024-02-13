#!/bin/bash

X=$1
Y=$2

SUM=$(($x+$y))

echo "$x+$y=$SUM"

echo "total arguments passed :: $#"

echo "All the arguments passed :: $@"

echo "script-name :: $0"