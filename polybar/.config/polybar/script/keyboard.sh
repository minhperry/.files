#!/bin/sh

ENGINE="$(fcitx5-remote -n 2>/dev/null)"

# Absolute fallback
[ -z "$ENGINE" ] && {
  echo "??"
  exit 0
}

case "$ENGINE" in
unikey)
  echo "vi"
  ;;
keyboard-de-nodeadkeys)
  echo "de"
  ;;
keyboard-*)
  # Extract layout safely: keyboard-us → us
  echo "${ENGINE##*-}"
  ;;
*)
  # Unknown but non-empty engine
  echo "??"
  ;;
esac
