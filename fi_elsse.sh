#!/bin/bash
user="${USER}"
TIME="$(date +%H:%M:%s-%F)"
check(){
if  [ $a -ne 0 ];
then
        echo "User $user try to access the file  $filename on $TIME.please check with user as he don't have access" >> console.log
else
       echo "User $user has accessed $filename file on $TIME." >> console.log
fi
}
cat /etc/shadow 2>> error.log
a=$?
filename="/etc/shadow"
check

cat /new 2>> error.log
a=$?
filename="/new"
check
