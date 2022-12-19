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
cat $1 2>> error.log
a=$?
filename=$1
check

cat $2 2>> error.log
a=$?
filename=$2
check
