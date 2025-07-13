#!/bin/bash


read -p "Day number 1-7 of the week: " day

week=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")


echo ${week[(${day} - 1)]}
