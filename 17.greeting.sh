#!/bin/bash

Names=""
Wishes=""

usage(){
echo "Usage :: $(basename $0) -n <name> -w<wishes>"
echo "Options ::"
echo "-n specify the name(mandatory)"
echo "-n specify the wishes(mandatory)"
echo "-h display help"

while getops "n:w:h" opt;
do
case $opt in
n) Name="$OPTARG";;
w) Wishes="$OPTARG";;
/?) echo "invalid option : -"$OPTARG"" >&2; usage; exit;; 
h|*) usage exit;;
esac
done

if [ -z "$Name" ] || [ -z "$Wishes" ]
then
echo "Error :: Options '-n' and '-w' should not be empty"
usage
exit 1
fi
echo "Hey $Name, $Wishes I am learning devops" 
