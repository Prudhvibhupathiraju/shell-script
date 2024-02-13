#!/bin/bash
G="\e[32m"
N="\e[0m"
for i in {1..20}
do
echo "2 * $i = $G $((2 * $i)) $N"
done