# This scripted was created on 07/03/2022, name=info.sh, exercise-1
#!/bin/bash
# Enter the variable here , Dont change the variables.
Name=`whoami`
Date=`date`
working_dir=`pwd`
Plogged='last | wc -c'

# This is execution part -- using print cmd to execute lines

printf "

1. Hello There, I am $Name
2. Today is $Date
3. I am working on under "$working_dir" directoy
4. No of people logged on this machine in past $Plogged

\n **END OF SCRIPT** "