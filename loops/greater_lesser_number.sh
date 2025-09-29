#!/bin/bash

echo "enter number"

number= read num

if [ $number -lt 10 ] then

echo "entered number :$number is  less tahn 10"

else

echo "entered number : $number is greater than 10"

fi