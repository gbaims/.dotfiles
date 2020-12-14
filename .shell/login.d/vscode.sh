FILE=$HOME/.config/Code/User/must-install-extensions.conf
FLAG=$HOME/.config/Code/User/must-install-extensions.flag

install() {
    cat "$FILE" | xargs -L 1 code --install-extension
    if [ $? -eq 0 ]; then
        touch "$FLAG"
	return 0
    fi
    return 1
}

if type code > /dev/null && [ -f "$FILE" ]; then
    if [ ! -f "$FLAG" ]; then
        install
	return $?
    fi

    if [ "$FILE" -nt "$FLAG" ]; then
        install
	return $?
    fi
fi
