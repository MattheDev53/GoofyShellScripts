#!/usr/bin/env bash

# starts Shizuku on an Android device with adb

echo "Starting ADB Server"
adb start-server
echo "Waiting for Device"
adb wait-for-device
echo "Device found"
echo "Starting Shizuku"
adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh
echo "Done!"