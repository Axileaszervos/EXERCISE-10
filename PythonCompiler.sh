#! /usr/bin/bash

# create results.txt and select the case
echo "Do you have a file with python code or would you like to create a new one(type yes(import an existing file) or no(Create a new one))?"
read case
touch results.txt

#import an existing file
if [ "$case" = "yes" ];
then
echo "Enter your filename:"
read filename
echo "compiling $filename..."
sleep 1
python $filename

#Create a new Python file
elif [ "$case" = "no" ];
then
echo "create a new file, type your filename:"
read newfilename
echo "Congratulations, you have created a new python file!"

#!/usr/bin/env python in the first line of file
echo "#!/usr/bin/env python" | cat >> $newfilename

#compile the newfilename
vim $newfilename
chmod +x ./$newfilename
echo "compiling $newfilename... "
sleep 1

#if the file is compiled, the result of programm will overwrite in the results.txt
if python $newfilename; then
 ./$newfilename | cat >> results.txt
  echo "opening results.txt..."
  sleep 1
  vim results.txt
 fi
fi


