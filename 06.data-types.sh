#!/bin/bash

echo "X="

read -s x

echo "Y="

read -s y

SUM=$(($x+$y))

echo "$x+$y=$SUM"

echo "total arguments passed :: $#"

echo "All the arguments passed :: $@"

echo "script-name :: $0"