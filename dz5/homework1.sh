#!/bin/bash


read -p "Enter number: " num

func() {
    if [ $num -gt 0 ];
    then 
        echo "Положительное"
    else
        echo "Не положительное"
    fi   
}

func
