#!/bin/bash

echo "Input a list of space separated integers."

# Read list of integers
read integers

total=0
count=0

for i in $integers
do
    # Get sum of all integers
    total=$(($i+$total))

    # Count number of integers less than 10
    if [ $i -lt 10 ]
    then
        count=$(($count+1))
    fi
done

# Print the calculated values 
echo "Total: $total"
echo "Count under 10: $count"
