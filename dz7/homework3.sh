#!/bin/bash

# Массив файловых систем для мониторинга
filesystems=("/" "/home" "/var")  # Добавьте нужные ФС

# Проверяем каждую файловую систему
for fs in "${filesystems[@]}"; do
    # Получаем процент использования для текущей ФС
    usage=$(df -h "$fs" | tail -1 | awk '{print $5}' | cut -d'%' -f1)
    
    # Проверяем, >= 90%
    if [ "$usage" -ge 90 ]; then
        echo "Внимание: Файловая система $fs заполнена на ${usage}%!" >> /alert.txt
    fi
done

# Если файл alert.txt создан, выводим сообщение
if [ -f "/alert.txt" ]; then
    echo "Обнаружены переполненные файловые системы. Подробности в /alert.txt"
    cat /alert.txt
fi
