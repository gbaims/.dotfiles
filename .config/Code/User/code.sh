#!/bin/bash

FILE=$HOME/.config/Code/User/must-install-extensions.conf
FLAG=$HOME/.config/Code/User/must-install-extensions.flag

if type code > /dev/null ; then
    if [ -f "$FILE" ]; then
        if [ ! -f "$FLAG" ] || [ "$FILE" -nt "$FLAG" ]; then
            cat "$FILE" | xargs -L 1 code --install-extension
            if [ $? -eq 0 ]; then
                touch "$FLAG"
            fi
        fi
    fi
    code --unity-launch $*
else
    echo 'You must install vscode first.'
fi
