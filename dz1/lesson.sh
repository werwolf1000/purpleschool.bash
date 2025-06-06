#!/bin/bash

printf "Упражнение 1: Имя пользователя\n\n"
#Напиши скрипт оболочки, который выводит имя твоего пользователя. Подсказка: используй команду echo с переменной среды USER."
echo $USER

printf '%*s\n' 100 | tr ' ' '='


printf "\nУпражнение 2: Текущая директория\n\n"
#Напиши скрипт оболочки, который выводит твой текущий рабочий каталог. Подсказка: используй команду echo с переменной среды PWD.
echo $PWD


printf '%*s\n' 100 | tr ' ' '='
printf  "\nУпражнение 3: Домашний каталог\n\n"
#Напиши скрипт оболочки, который выводит абсолютный путь к твоему домашнему каталогу. Подсказка: используй команду echo с переменной среды HOME.
echo $HOME


printf '%*s\n' 100 | tr ' ' '='
printf "\nУпражнение 4: Версия ОС\n\n"
#Напиши скрипт оболочки, который выводит значение файла "/etc/os-release". Подсказка: используй команду cat с именем файла.
cat /etc/os-release


printf '%*s\n' 100 | tr ' ' '='
printf "\nУпражнение 5: Uptime Напиши скрипт оболочки, который выводит результат команды uptime. Подсказка: просто исполни uptime в скрипте.\n\n"
uptime


printf '%*s\n' 100 | tr ' ' '='
printf "\nУпражнение 6: Полная информация\n\n"

echo "Привет Моё имя $USER" 
echo "Сейчас я нахожусь в $PWD" 
echo "Мой домашний каталог $HOME" 
echo "Моя ОС"
cat /etc/os-release
echo "Мое время работы"
uptime

