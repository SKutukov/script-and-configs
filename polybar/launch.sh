#!/bin/bash

WINDOW_ID_CONKY=/tmp/conky_window_id

# Завершить текущие экземпляры polybar
killall -q polybar

#conky_launch
# Ожидание полного завершения работы процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done



# Запуск Polybar со стандартным расположением конфигурационного файла в ~/.config/polybar/config
polybar top_bar_right -r -c ~/.config/polybar/top_bar_right &
sleep 4

polybar top_bar_left -r -c ~/.config/polybar/top_bar_left &
polybar bottom_right_bar -r -c ~/.config/polybar/bottom_right_bar &
polybar bottom_left_bar -r -c ~/.config/polybar/bottom_left_bar &
# example — имя бара

# -r ключ для автоматического перезапуска бара, при изменении его конфига

echo «Polybar загрузился…»
