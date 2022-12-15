#!/bin/bash
user="${USER}"
TIME="$(date +%H:%M:%s-%F)"
check(){
if  [ $a -ne 0 ];
then
       echo "User $user try to access the file  $i on $TIME.please check with user as he don't have access" >> console.log
else
    echo "User $user has accessed $i file on $TIME." >> console.log
fi
}

error(){
if  [ $e -eq 1 ];
then
       echo "Permission denied on $i on $TIME" >> error.log
fi
}


for i in "$@"
do
	cat $i 2>/dev/null
	e=$?
	error

	a=$?
	check
done
