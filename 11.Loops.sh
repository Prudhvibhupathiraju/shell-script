#!/bin/bash
G="\e[31m"
N="\e[0"
for i in {1..20}
do
echo "2 * $i = $G $((2 * $i)) $N"