#!/bin/bash

num=1

while [  $(( num / 3 ))  -le 10 ]
do
     if [ $(( num % 3 )) -eq 0  ];
     then
        echo $num
     fi   
     (( num++ ))

done
