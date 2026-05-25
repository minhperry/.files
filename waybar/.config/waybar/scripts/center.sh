#!/usr/bin/env bash

session="$XDG_SESSION_DESKTOP"

if [[ "$session" == "hyprland" ]]; then
    ws=$(hyprctl activeworkspace -j | jq -r '.id')
    echo "{\"text\": \"WS $ws\", \"class\": \"hypr\"}"

else
    current=$(qdbus org.kde.KWin /KWin org.kde.KWin.currentDesktop)
    title=$(qdbus org.kde.KWin /KWin org.kde.KWin.activeWindowTitle 2>/dev/null)

    if [[ -z "$title" ]]; then
        title="Desktop $current"
    fi

    echo "{\"text\": \"$session\", \"class\": \"kde\"}"
fi