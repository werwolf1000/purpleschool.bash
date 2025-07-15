#!/bin/bash

read -p "Введите имя пользователя: " name
read -p "Введите идентификатор пользователя: " id

if [[ ! -f "./servers.txt" ]]; then
    echo "Ошибка: файл servers.txt не найден!" >&2
    exit 1
fi

while read -r server; do
    if [[ -z "$server" ]]; then  # Пропуск пустых строк
        continue
    fi
    echo "Добавляем пользователя $name на сервер $server..."
    ssh -t "$server" "sudo adduser --disabled-password --gecos '' --uid '$id' '$name'"
done < "./servers.txt"
