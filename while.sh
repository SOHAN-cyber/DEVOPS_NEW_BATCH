#!/bin/bash
count=0
while [ $count -le 9 ] 
do
	echo "count: $count"
	count=`expr $count + 1`
done
