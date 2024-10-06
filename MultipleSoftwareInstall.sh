#!/bin/bash
# Author: Julie
# Installing Multiple packages by command line arguments

if [[ $# -eq 0 ]]
then
    echo "Pass software names as command line arguments"
    exit 1
fi

if [[ $(id -u) -ne 0 ]]
then 
    echo "Please login as root user"
    exit 2
fi

for software in "$@"
do 
    if which "$software" >/dev/null 2>&1
    then 
        echo "Already installed: $software"
    else
        echo "Installing $software.........."
        apt-get install -y "$software"
        if [[ $? -eq 0 ]]
        then
            echo "Successfully installed: $software"
        else
            echo "$software installation failed"
        fi
    fi
done

