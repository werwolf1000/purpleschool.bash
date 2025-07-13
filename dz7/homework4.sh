#!/bin/bash


week=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")

tmp=${week[2]}

week[2]=${week[4]}
week[4]=${tmp}

echo ${week[@]}
