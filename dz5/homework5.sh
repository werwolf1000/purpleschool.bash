#!/bin/bash


num=$1

if [ $num -le 3 ];
then
    exit 1
fi

cnt=0
echo 0
func_recursive()
{
    n1=$1
    n2=$2

    echo $n2
    
     tmp=$n2
     n2=$(( n1+n2 ))
     n1=$tmp
    
    (( cnt++ ))
 
    if [ $cnt -lt $(( num -1 ))  ];
    then
        func_recursive $n1 $n2
    fi
    
}


func_recursive 0 1
