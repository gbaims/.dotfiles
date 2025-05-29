#!/usr/bin/env bash

# Load config
dconf load / < "$HOME/.config/dconf/user.ini"

# Load background picture
uri="file://$HOME/.local/share/backgrounds/minimalist-landscape-4k.jpg"
gsettings set org.gnome.desktop.background picture-uri      "$uri"
gsettings set org.gnome.desktop.background picture-uri-dark "$uri"
