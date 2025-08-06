######################################  Script for reverse SCP #################################

#!/bin/bash

echo " Enter file or directory which we wan to SCP: "
read file
echo " Enter server IP from which server we want to SCP: "
read ip


scp -r sachinb@$ip:/home/sachinb/$file .
echo " $file is successfully scp reverally from $ip: "





