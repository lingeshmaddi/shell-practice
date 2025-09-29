#!/bin/bash

echo "enter number"

#number= read num
number=$1

if [ $number -lt 10 ]; then

    echo "entered number :$number is  less than 10"

elif [ $number -eq 10 ]; then

    echo "entered number : $number is equal to 10"

else
    
    echo "entered number : $number is greater than 10"

fi