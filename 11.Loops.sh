#!/bin/bash
G="\e[32m"
Y="\e[33m"
N="\e[0m"
for i in {1..20}
do
echo -e "$Y2 * $i$N = $G$((2 * $i))$N"
done