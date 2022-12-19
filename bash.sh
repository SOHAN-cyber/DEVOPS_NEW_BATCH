#!/bin/bash
user="${USER}"
echo $user
TIME="$(date +%H:%M:%s-%F)"
echo $TIME
cat /etc/shadow 2> error.log
echo $?
if echo $? != "0"
then
	echo "User $user try to access the file  /etc/shadow on $TIME.please check with user" > console.log
fi
