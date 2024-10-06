#!/bin/bash
#Execute a ./findLargeFiles.sh /home/vagrant
#This is for finding large files in path, Here path sending through the command line
path=$1
echo "Find Large 5 files in $path"
du -ah  $path|sort -hr |head -n 5 > /tmp/filesize.txt
echo "List of 5 large files"
cat /tmp/filesize.txt
