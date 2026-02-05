#!/bin/bash

ENGINE=$(fcitx5-remote -n)

case "$ENGINE" in
"unikey")
  echo "vi"
  ;;
"keyboard-de-nodeadkeys")
  echo "de"
  ;;
*)
  echo "${ENGINE: -2}"
  ;;
esac
