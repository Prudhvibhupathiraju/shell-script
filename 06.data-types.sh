#!/bin/bash

echo "X="

read -s x

echo "Y="

read -s y

SUM=$(($x+$y))

echo "X+Y=$SUM"