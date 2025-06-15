#!/bin/bash


if [ $# -eq 0 ];
then
    echo "Не переданы входные параметры"
    exit 1
fi

num=$1

func() 
{   
        if [ $num -gt 0 ];            
        then        
            result="Простое число"
            for (( i=1; i < num; i++ ))
            do
                if [ $(( num % i )) -eq 0  ] && [ $num -ne $i ]  && [ $i -gt 1 ];                
                then
                    result="Не простое число"
                    break
                fi    
            done
        else
            result="Не простое число"
        fi
        echo $result
}

func
