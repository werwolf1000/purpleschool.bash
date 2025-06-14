#!/bin/bash


num=$1


calculate()
{
    for i in {1..10}
    do
        echo $(( num * i ))
    done
}

calculate
