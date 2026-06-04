#!/bin/bash

case "$1" in
    shutdown)
        loginctl poweroff
        ;;
    reboot)
        loginctl reboot
        ;;
    logout)
        loginctl terminate-session ""
        ;;
    *)
        echo "Usage: $0 {shutdown|reboot|logout}"
        exit 1
        ;;
esac