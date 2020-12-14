#!/bin/bash

#
# Add the following line in /usr/bin/regolith-look, inside refresh function, before i3 restart
#
# refresh() {
#     ...
#
#     # additional resources
#     . "$HOME/.config/regolith/additional-resources.sh"
#
#     # restart i3-wm after merging Xresources
#     i3-msg -q restart
# }
#

FONT=$(xrescat additional.gnome.interface.font)
if [ ! -z "$FONT" ]; then
    gsettings set org.gnome.desktop.interface font-name "$FONT"
fi

DOCUMENT_FONT=$(xrescat additional.gnome.interface.document-font)
if [ ! -z "$DOCUMENT_FONT" ]; then
    gsettings set org.gnome.desktop.interface document-font-name "$DOCUMENT_FONT"
fi

MONOSPACE_FONT=$(xrescat additional.gnome.interface.monospace-font)
if [ ! -z "$MONOSPACE_FONT" ]; then
    gsettings set org.gnome.desktop.interface monospace-font-name "$MONOSPACE_FONT"
fi

