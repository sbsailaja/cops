# Below are the lists of command used or Managing Files and directory

1. **cp** :COPY COMMAND:

To copy is used to copy files and directories from source and destination location.


        Syntax: cp <SOURCE_LOCATION/FILE_NAME> <DESTINATON_LOCATION>

Example:

Below command will copy the file “file1.txt” from location /home/ubuntu/ to location /home/demouser
                
                cp /home/ubuntu/file1.txt /home/demouser/file1.txt

2.	**mv** : MOVE or RENAME COMMAND:  
 
 To move or rename any files & directories. move (mv) command has two functions

   1.	It can rename file. 
   2.	It can also move the file from one location to other location

    

Examples:

Below command will move the file “myfile1” from location /home/ubuntu/ to location /home/demouser
 	
        

Below cmd will rename the file in same location from name myfile1 to my file2.txt

    Syntax: mv <SOURCE_LOCATION/FILE_NAME> <DESTINATON_LOCATION/>

    
        
        mv /home/ubuntu/myfile1.txt /home/demouser/myfile1.txt #Moves file from one to other location.
        mv myfile1.txt myfile2.txt  #Renames the file myfile1 to myfile2 in same location
        mv /home/ubuntu/myfile1.txt /home/demouser/myfile2.txt #Combination of both rename and move. It moves from one location to other &  rename it it destination location.


& 
3. **cat** : READ COMMAND

The cat command can read content any file (only files). It's a run line command i.e. it can read content of file without getting into edit mode.

    Syntax: cat [options] [file_names]

        cat myfile1.txt	            #Display contents of file myfile.txt
        cat /home/ubuntu/myfile1.txt #Display content of file myfile.txt under location /home/ubuntu/
        cat myfile1.txt file2.txt	#Concatenate two text files and display the result in the terminal
        cat file1.txt file2.txt > consolidated.txt	#Concatenate two text files & write to a new file called consolidated.txt


4. **ls** : LIST COMMAND: 

    The list (ls) command can read contents any directory (only directory).

    It can also ready properties of directory and files as well with few  arguments lile -l (long list)

    Syntax: ls <FILE_LOCATION/FILE_NAME>  

Examples:
Below command will list the content of directory /home/ubuntu/demouser 

        ls  #list the contents for current directory
        ls /home/ubuntu/ #List the content of unbunt dir "/home/ubuntu/"
        ls /home/ubuntu/myfile # Below command will list properties of file myfile


5. **ls** : LIST COMMAND: 

    The list (ls) command can read contents any directory (only directory).

    It can also ready properties of directory and files as well with few  arguments lile -l (long list)

    Syntax: ls <FILE_LOCATION/FILE_NAME>  

Examples:
Below command will list the content of directory /home/ubuntu/demouser 

        ls  #list the contents for current directory
        ls /home/ubuntu/ #List the content of unbunt dir "/home/ubuntu/"
        ls /home/ubuntu/myfile # Below command will list properties of file myfile

6. **adduser**  To create a user.

when adduser command will create 3 thing when executed.

1. a user 

2. a user id (aka uid)
    
3. a group for username

4. ad id for group. 

**user** : it will create a user which is needs to be passed as input.

**uid** :  It will create a uid automatically, no input required. (auto generated).

**group** :  A group would be created automatically, it will use user name to create a group. username and group by default would be same. 

**gid** : A group id will also be created when ever a group is created which will have same id what uid if it's created using adduser cmd.

    syntax : adduser <usernametocreated>

        ubuntu@i:~/sukumar$ sudo adduser copsdemo
        Adding user `copsdemo' ...
        Adding new group `copsdemo' (1004) ...
        Adding new user `copsdemo' (1004) with group `copsdemo' ...
        Creating home directory `/home/copsdemo' ...
        Copying files from `/etc/skel' ...
        Enter new UNIX password:
        Retype new UNIX password:
        passwd: password updated successfully

        Optional values
        Changing the user information for copsdemo
        
    Enter the new value, or press ENTER for the default
            Full Name []: cops demo user
            Room Number []: b1
            Work Phone []:
            Home Phone []:
            Other []:
            Is the information correct? [Y/n] yes


5. **id** : To check information of an id. ubuntu@i:~/sukumar$ id copsdemo

    syntax id <username>
        
        id copsdemo

        #output

        uid=1004(copsdemo) gid=1004(copsdemo) groups=1004(copsdemo)

6. addgroup 

    groupadd [OPTIONS] GROUPNAME

    groupadd cops-b1 #This is will create a new group named cops-b1, with auto generate id.

    groupadd -g 2001 cops-b1   #This would create a new group ith specific id 2001
        
        
        
    if you get below error message that group already exists then try using - f flag
        
        groupadd: group 'cops-b1' -f
        groupadd -g -f 2001 cops-b1   #This would create a new group ith specific id 2001

7. chmoduser


## Scripting

what is script ? 

A: script is a executable file which execute the instructions which are programmed / written /coded in it.

Important pt:

> They are have extension .sh | ex. myscript.sh

> The user needs execution permission to execute .sh files

> They can be run using any compatible shells like bash or sh.
        
        bash myscript.sh
        sh myscript.sh 

**Few type of shells**

1. sh - shell
2. bash - born again shell
3. csh
4. tcsh
5. Ksh


**what is shebang (#!/bin/bash) ?**

A: Shebang is interpreter for system to make it understand which shell to use. 

when writing any shell script, it is mentioned at first line of the script.

it's denoted as
    
        #!/bin/bash
        #Place to declare Variables
        variable=1
        variable=2
        variable=3
        
        # place to enter execution scripts lines

        cmd "do something"
        echo "something"
        

**what is variable (script variable) ?**

a variable is an abstract storage location paired with an associated value. 

1. a=1, the value of a is 1 
2. x=India, The value of x is stored a India

above a and x are called a variable name


The variable in shell scripting are called by prefixing $ symbol to the variable name.
example



    a=1
    x=India
    echo "The value of a is $a"
    echo " I live in $x" 


exercise 1 : info.sh

Task to create a script which will fetch dynamic values using few basic commands.

Steps 1:  creating a script file name info.sh

    sudo touch info.sh

step2 : edit info.sh by opening it with vim or vi. 

    sudo vim info.sh

step 3: Enter the below lines:

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
    3. I am working on under "$working_dir" directory
    4. No of people logged on this machine in past $Plogged

    \n **END OF SCRIPT** "

step 4: save the file. (escape --> colon --> wq )

Step 5: execute the file from linux.  (cd to file directory)

    bash info.sh
    or
    shell info.sh

You should get below out put.

        1. Hello There, I am <YourUserName>
        2. Today is Mon, Mar  7, 2022  8:52:12 AM
        3. I am working on under <direcotoryName> directory







    

        
