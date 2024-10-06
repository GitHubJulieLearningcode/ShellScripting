#!/bin/bash
#delete test directory from all folders 
for folder in $(find . -type d);
do
   if [ -d "$folder/test" ];
     then
        echo "removing the test from $folder"
        rm -rf test
     else
         echo "No such directory in $folder"
    fi
done
