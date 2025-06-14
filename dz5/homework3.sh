#!/bin/bash

num=$1

func() 
{   
        result="Простое число"
        for (( i=2; i < num; i++ ))
        do
            if [ $(( num % i )) -eq 0  ];
            then
                result="Не простое число"
                break
            fi    
        done
        echo $result
}

func
