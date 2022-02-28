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


6. **id** : To check information of an id. ubuntu@i:~/sukumar$ id copsdemo

    syntax id <username>
        
        id copsdemo

        #output

        uid=1004(copsdemo) gid=1004(copsdemo) groups=1004(copsdemo)

7. addgroup 

    groupadd [OPTIONS] GROUPNAME

        groupadd cops-b1 #This is will create a new group named cops-b1, with auto generate id.
        groupadd -g -f 2001 cops-b1 # this would create a new group ith specific id 2001. use -f if you get below error message 
        groupadd: group 'cops-b1' already exists
8. 




    

        