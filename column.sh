#!/bin/bash

echo "Enter the name of a file with two tab-separated columns"

read filename

cat $filename | awk '{ if(($1>10) && ($2<10)){print}}'

exit


# DB: Good! Where'd you learn this awk syntax?