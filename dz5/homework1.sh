#!/bin/bash

# Функция для проверки положительного числа
is_positive() {
    local num=$1
    
    # Проверяем, что число больше нуля
    if ((num > 0)); then
        return 0  # Положительное
    else
        return 1  # Не положительное (отрицательное или ноль)
    fi
}

# Основная часть скрипта
read -p "Введите число: " number

if is_positive "$number"; then
    echo "$number — положительное число."
else
    echo "$number — не является положительным числом."
fi
