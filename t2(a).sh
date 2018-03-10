#!/bin/bash
if [ $# -eq 2 ]
then
var1=(`ls -li $1`) 
  if [ ${var1[2]} = $2 ]
  then
    echo " Cheating! "
  else
    echo "no Cheating!"
  fi
fi

if [ $# -eq 5 ] && [ $1 = '-c' ]
then
 var1=(`ls -li $2`)
 var2=(`ls -li $4`)
elif [ $3 != $5 ] && [ ${var1[2]} != ${var2[2]} ]
then
   echo "Cheating = 0"
else
   echo `diff -c $2 $4`
n=`diff -c $2 $4 | wc -w`

if [ $n -eq 0 ]
then
  echo "Cheating = 1"
else
  echo "Cheating = 0"
fi
 echo `cat $2`
 echo `cat $4`
fi
fi
