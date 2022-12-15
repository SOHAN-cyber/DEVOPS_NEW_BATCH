#!/bin/bash
set -n
a=3
b=4
ADD=`expr $a + $b`
echo $ADD
SUB=`expr $a - $b`
echo $SUB
DIVID=`expr $a / $b`
echo $DIVID
MUL=`expr $a \* $b`
echo $MUL
