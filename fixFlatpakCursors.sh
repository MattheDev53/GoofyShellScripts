#!/bin/bash/

# Fix flatpak cursors using method from
# https://github.com/flatpak/flatpak/issues/709#issuecomment-1670708180

flatpak --user override --filesystem=xdg-data/themes:ro
flatpak --user override --filesystem=$HOME/.themes:ro
flatpak --user override --filesystem=xdg-data/icons:ro
flatpak --user override --filesystem=$HOME/.icons:ro
flatpak --user override --filesystem=/usr/share/icons/:ro