#!/bin/bash
# Active window title — tries kdotool (KWin Wayland), then xdotool (XWayland)
title=$(kdotool getactivewindow getwindowname 2>/dev/null \
    || xdotool getactivewindow getwindowname 2>/dev/null)
echo "${title:0:40}"
