#!/bin/bash
#Install git based on OS
echo "Script to install git" 
echo "git install started"
if [ "$(uname)" == "Linux" ];
then
   echo "This is Linux system"
   yum install git -y
elif [ "$(uname)" == "Darwin" ];
then
  echo "this is macos"
  brew install git
else
  echo "not installing"
fi
