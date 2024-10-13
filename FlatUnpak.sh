#!/bin/bash

# Installs flatpak apps from a file as written here:
# https://www.reddit.com/r/linux/comments/u3wcm7/easy_flatpak_apps_backupinstallation/

xargs flatpak install -y < flatpakBackup.txt