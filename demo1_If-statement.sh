#!/bin/bash

#Enter the variables here
Enter the variable here , Dont change the variables.
Name=`whoami`
Date=`date`
working_dir=`pwd`
Plogged=`last | wc -l`


touch listofppl
echo "demouser" >> listofppl

database=`cat listofppl`

# Below lines Will ask for name as input and read name value and stores as variable under $youname

echo "Enter your full name : "
read x
sleep 2
#Below lines will echo the value entered and sleep for 3 seconds
echo "Hi $x, please wait.. let me fetch the values for you"
sleep 2

#It will check for the condition if the provided values matches, then 'then' block line will be executed.
if [ $x == $database ];
then
    echo "name found on the list \n"      
#If  given condition fails, then 'else' block lines are executed,
else
    echo "name NOT found on the list \n" 
fi

#----------END OF THE SCRIPT-----------