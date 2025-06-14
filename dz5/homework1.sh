#!/bin/bash


read -p "Enter number: " num

func() {
    if [ $1 -gt 0 ];
    then 
        echo "Положительное"
    else
        echo "Не положительное"
    fi   
}

func $num
