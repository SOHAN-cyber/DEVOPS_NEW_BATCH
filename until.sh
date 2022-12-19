#!/bin/bash
count=0
until [ $count -ge 9 ] 
do
	echo "count: $count"
	count=`expr $count + 1`
done
