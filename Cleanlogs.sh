#!/bin/bash
#path of file where logs are deleting passing through command line arguments
echo "Script to clean 30 days old logs from log files"
path=$1
echo $path
find $path -mtime +30 -delete
if [ $? -eq 0 ];
then
   echo "files deleted Successfully"
else
   echo "script has some Issue"
fi
