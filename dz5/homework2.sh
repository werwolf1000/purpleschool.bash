#!/bin/bash


if [ $# -eq 0 ];
then
    echo "Не переданы входные параметры"
    exit 1
fi


calculate()
{
    num=$1
    for i in {1..10}
    do
        echo $(( num * i ))
    done
}

calculate $1
