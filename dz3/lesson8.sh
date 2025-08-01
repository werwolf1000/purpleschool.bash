#!/bin/bash

#Упражнение 8: Чет / нечет
#Напиши скрипт оболочки, который принимает положительное целое число в качестве аргумента и проверяет, является ли число нечетным или четным, и выводит 'Number X is odd' или 'Number X is even' соответственно.

#Если аргумент отсутствует, или указано более двух аргументов, или указано отрицательное число, то выводится сообщение об ошибке: 'Please send one non negative number'

#Подсказка: используй оператор деления по модулю "%", чтобы проверить, равен ли остаток нулю. Специальная переменная "$#" содержит количество переданных в скрипт аргументов.

#Пример: для числа 182 вывод должен быть 'Number 182 is even', а для ввода 23 вывод должен быть 'Number 23 is odd'


if [ $# -ne 1 ] || [ $1 -lt 0 ]; then
echo "Please send one non negative number"
exit 1
fi

if [ $(($1 % 2)) -eq 0 ]; then
echo "Number $1 is even"
else 
echo "Number $1 is odd"
fi
