#!/bin/bash

num=$1

func() 
{   
        if [ $num -gt 0 ];
        then        
            result="Простое число"
            for (( i=2; i < num; i++ ))
            do
                if [ $(( num % i )) -eq 0  ];
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
