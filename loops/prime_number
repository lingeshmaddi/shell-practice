#!/bin/bash
echo -e "Enter Number : \c"  #13
read n #13
for((i=2; i<=$n/2; i++)) #2<13/2 =>2<6=>true=>
do
  ans=$(( n%i )) #13%2=>6.5
  if [ $ans -eq 0 ] #6.5 -eq 0=>false
  then
    echo "$n is not a prime number."
    exit 0
  fi
done
echo "$n is a prime number." #=>print