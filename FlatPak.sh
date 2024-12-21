#!/usr/bin/env bash

# Backs up flatpak apps to a file as written here:
# https://www.reddit.com/r/linux/comments/u3wcm7/easy_flatpak_apps_backupinstallation/

flatpak list --columns=application --app > flatpakBackup.txt