# Упражнение 4: Сложное отображение

#Измени скрипт оболочки, чтобы после для недели он запрашивал число и выводил в одной строке с днем недели. Подсказка: используй дополнительную команду read для сохранения целого числа в переменной, и добавть вывод второй переменной в команду echo

read -p "сегодняшний день недели: "  day_of_the_week 
read -p "сегодняшний день: "  current_day 

echo "$day_of_the_week $current_day"
