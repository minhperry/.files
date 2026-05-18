#!/bin/bash
get_led() {
    for led in /sys/class/leds/*${1}*; do
        [ -f "$led/brightness" ] && cat "$led/brightness" && return
    done
    echo 0
}
case "$1" in
    caps) [ "$(get_led capslock)" = "1" ] && echo '{"text":"A","class":"locked"}' || echo
'{"text":"a","class":"unlocked"}' ;;
    num)  [ "$(get_led numlock)"  = "1" ] && echo '{"text":"#","class":"locked"}' || echo
'{"text":"#","class":"unlocked"}' ;;
esac