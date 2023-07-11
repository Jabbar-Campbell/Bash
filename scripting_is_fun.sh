 
#!/bin/sh
echo "scripting is fun" #echo is like a print
x="Shell Scripting is Fun!"  #set variables with no space

echo ${x} #reference variables with brackets ${}

y=$(hostname) #outputs of commands can be set thru $()


#notice how  ${} or $ () interupts the quites and puts om either variable or call to function
echo "this  script is running on ${y}. where $(hostname) is the output of the  hostname command"
 



#spaceing is  important other wise arguments are confused. instead of  brackets you can
#also use the word test

test -e /etc/shadow

if [ -e /etc/shadow.txt ] #[-e file]  test if a file is present
then echo "yes I see it"
else echo "there is no file"
fi


if [ -w /etc/shadow.txt ] #[w file.name] test of a file is writeable 
then echo "...and the file is writable"
else echo "file is not writable either"
fi


echo $1 #print out the first second third and 4th user supplied argument(s)
echo $2
echo $3
echo $4 

  



#read in an input named after the variable FILE and then inspect it downstream with
## read -p <PROMPT> <variable.name>

read -p "What is the name of the file you're looking for " FILE
echo "looking For file ${FILE}"


if [ -e ${FILE} ] #[-e $1 ] would have made this and argument supplied with no prompt
then echo "is see it"
else echo "I dont see this file"
fi


if [ -f ${FILE} ] #[-e $@ ] allows for a list of arguments supplied with no prompt
then echo  "i see it...it happens to be a regular file"
fi

