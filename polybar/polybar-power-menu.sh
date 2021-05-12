#!/usr/bin/env bash

# CONFIGURATION
LOCATION=3
YOFFSET=30
XOFFSET=0
WIDTH=12
WIDTH_WIDE=24
THEME=solarized

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

show_menu () {
    menu="$(rofi -sep "|" -dmenu -i -p menu -location $LOCATION -yoffset $YOFFSET -xoffset $XOFFSET -theme $THEME -width $WIDTH -hide-scrollbar -line-padding 4 -padding 20 -lines 5 <<< "hibernate|suspend|power off|reboot")"
                case "$menu" in
                    *'hibernate') ~/.config/polybar/hibernate.sh ;;
                    *'suspend') ~/.config/polybar/suspend.sh ;;
                    *'power off') ~/.config/polybar/poweroff.sh ;;
                    *'reboot') ~/.config/polybar/reboot.sh ;;
                esac
}

while getopts 'di:n:b:mp' c
do
    # shellcheck disable=SC2220
    case $c in
        d) show_devices ;;
        i) DEV_ID=$OPTARG ;;
        n) DEV_NAME=$OPTARG ;;
        b) DEV_BATTERY=$OPTARG ;;
        m) show_menu  ;;
        p) show_pmenu ;;
    esac
done