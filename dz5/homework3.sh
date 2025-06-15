#!/bin/bash

# Функция для проверки, является ли число простым
is_prime() {
    local num=$1
    
    # Обработка 1 и 2 (считаются простыми)
    if [ "$num" -eq 1 ] || [ "$num" -eq 2 ]; then
        return 0  # Простое
    fi
    
    # Числа меньше 1 не могут быть простыми
    if [ "$num" -lt 1 ]; then
        return 1  # Не простое
    fi
    
    # Проверяем делители от 2 до корня из числа
    for ((i=2; i*i <= num; i++)); do
        if ((num % i == 0)); then
            return 1  # Найден делитель — не простое
        fi
    done
    
    return 0  # Если делителей нет — простое
}

# Основная часть скрипта
read -p "Введите число: " number

if is_prime "$number"; then
    echo "$number — простое число."
else
    echo "$number — не является простым числом."
fi
