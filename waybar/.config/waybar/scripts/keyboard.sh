#!/bin/sh

ENGINE="$(fcitx5-remote -n 2>/dev/null)"

[ -z "$ENGINE" ] && { echo "??"; exit 0; }

case "$ENGINE" in
unikey)
    echo "vi"
    ;;
keyboard-de-nodeadkeys)
    echo "de"
    ;;
keyboard-*)
    echo "${ENGINE##*-}"
    ;;
*)
    echo "??"
    ;;
esac
