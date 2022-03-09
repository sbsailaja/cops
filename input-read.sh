#!/bin/bash

# Enter the variable here , Dont change the variables.
Name=`whoami`
Date=`date`
working_dir=`pwd`
Plogged=`last | wc -l`

#  will ask for name as input and read name value and stores as variable under $youname
echo "Enter your full name : "
read x
sleep 2

#This will echo the name entered and sleep for 3 seconds
echo "Hi $x, please wait.. let me fetch the values for you"
sleep 3

# This is execution part -- using print cmd to execute lines

printf "
1. Hello $x, you have logged in as $Name
2. Today is $Date
3. I am working on under $working_dir directoy
4. No of people logged on this machine in past \t $Plogged \n **END OF SCRIPT** 
"

# End of the script
