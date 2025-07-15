#!/bin/bash

# Проверка наличия аргументов (каталогов для бэкапа)
if [ $# -eq 0 ]; then
    echo "Ошибка: Не указаны каталоги для резервного копирования."
    echo "Пример использования: $0 /path/to/dir1 /path/to/dir2 ..."
    exit 1
fi

# Массив каталогов для бэкапа (из аргументов)
backup_dirs=("$@")

# Параметры бэкапа
dest_dir="/backups"                  # Каталог назначения на удаленном сервере
dest_server="user@backup.example.com"  # Сервер для хранения бэкапов
backup_time=$(date +"%Y-%m-%d_%H-%M-%S")  # Временная метка

# Создаем временный каталог для архивов
temp_dir="/tmp/backup_${backup_time}"
mkdir -p "$temp_dir"

# Перебираем каталоги и создаем архивы
for dir in "${backup_dirs[@]}"; do
    # Проверяем существование каталога
    if [ ! -d "$dir" ]; then
        echo "Предупреждение: Каталог '$dir' не существует, пропускаем."
        continue
    fi

    # Имя архива (заменяем / на _ в пути)
    archive_name=$(echo "$dir" | sed 's,^/,,; s,/,_,g')
    archive_file="${temp_dir}/${archive_name}_${backup_time}.tar.gz"

    echo "Создание архива для $dir..."
    tar -czf "$archive_file" -C "$(dirname "$dir")" "$(basename "$dir")" || {
        echo "Ошибка при создании архива для $dir"
        continue
    }

    # Копируем на удаленный сервер
    echo "Копирование $archive_file на сервер $dest_server..."
    scp "$archive_file" "${dest_server}:${dest_dir}/" || {
        echo "Ошибка при копировании $archive_file"
        continue
    }

    # Удаляем временный файл
    rm -f "$archive_file"
    echo "Архив $archive_file успешно скопирован и удален локально."
done

# Удаляем временный каталог
rm -rf "$temp_dir"
