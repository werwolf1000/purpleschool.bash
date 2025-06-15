#!/bin/bash

# Функция для проверки, является ли число простым
is_prime() {
    local num=$1
    
    # Обработка случаев для чисел меньше 2
    if [ $num -lt 2 ]; then
        return 1  # 1 - не простое (кроме 2, но 0 и 1 - нет)
    fi
    
    # Проверка делителей от 2 до sqrt(num)
    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1  # Найден делитель - число не простое
        fi
    done
    
    return 0  # Число простое
}

# Основная часть скрипта
read -p "Введите число: " number

if is_prime "$number"; then
    echo "$number — простое число."
else
    echo "$number — не является простым числом."
fi
