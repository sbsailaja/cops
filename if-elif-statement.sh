#!/bin/bash

echo "Enter the Number"
read a

#ref=10

echo "Enter the Number to be compared with"
read ref

if [ $a -eq $ref ]
then
    echo "Entered Number is equal to $ref"
elif [ $a -lt $ref ]
then 
    echo "Entered Number is less than $ref"
elif [ $a -gt $ref ]
then
    echo "Entered Number is Greater than $ref"
else [$a -eq 0 ]
    echo "Entered number cannot be Null or floating or string"
fi