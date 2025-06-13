#!/bin/bash

#!/bin/bash

num=1

until [  $(( num / 3 ))  -gt 10 ]
do
     if [ $(( num % 3 )) -eq 0  ];
     then
        echo $num
     fi   
     (( num++ ))

done
