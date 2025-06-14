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
            
            if [ $num -eq 1 ];
            then
                result="Не простое число"                
            elif [ $num -eq 2 ];
            then
                result="Простое число"
            else
                result="Простое число"
                for (( i=2; i < num; i++ ))
                do
                    if [ $(( num % i )) -eq 0  ];
                    then
                        result="Не простое число"
                        break
                    fi    
                done
            fi
        else
            result="Не простое число"
        fi
        echo $result
}

func
