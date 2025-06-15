#!/bin/bash


num=$1



func()
{
    if [ $num -le 3 ];
    then
        echo "Число должно быть больше 3"
        exit 1
    fi
    
    n1=0
    n2=1

    echo $n1
    for i in $(seq 1 $((num -1 )))
    do
        echo $n2
        tmp=$n2
        n2=$(( n1+n2 ))
        n1=$tmp
 
    done

}

func
