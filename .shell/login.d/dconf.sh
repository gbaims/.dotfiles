DIR=$HOME/.config/dconf/user.d
if [ -d "$DIR" ] && [ ! -z "$(ls -A -- "$DIR")" ]; then
    cat "$DIR"/* | dconf load /
fi
