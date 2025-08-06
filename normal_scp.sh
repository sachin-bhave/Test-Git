#!/bin/bash

cd /home/sachinb/
ls -lrth


echo " Enter file or directory which we wan to SCP: "
read file
echo " Enter server IP on which server we want to SCP: "
read ip

scp -r $file sachinb@$ip:/home/sachinb
echo " File or directory successfully SCP to destination server. 
