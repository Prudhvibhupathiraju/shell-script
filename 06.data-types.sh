#!/bin/bash

X=$1
Y=$2

SUM=$(($X+$Y))

echo "$X+$Y=$SUM"

echo "total arguments passed :: $#"

echo "All the arguments passed :: $@"

echo "script-name :: $0"