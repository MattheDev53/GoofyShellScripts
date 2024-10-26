#!/usr/bin/env bash

# !! WARNING !!
# THIS SCRIPT WILL FUCKING ANHIALATE YOUR DRIVE, USE AT YOUR OWN RISK
# !! WARNING !!

confirm="n"
while [ "$confirm" != "y" ]; do

    while [ "$confirm" != "y" ]; do
    # List Drives
    lsblk -d | awk '{print $1, $4}'
    # Drive Selection
    printf "Which drive do you want to anhialate?\n
    (e.g. /dev/sda)"
    read -r victimsDrive
    # Confirm Drive
    echo "Are you sure you want to anhialate $victimsDrive? [y/n]"
    read -r confirm
    done

    confirm="n"
    while [ "$confirm" != "y" ]; do
    # Pass Selection
    printf "Enter number of passes to anhialate %s\n
    (Note: More passes will take longer)\n
    (default: 1)" "$victimsDrive"
    read -r passes
    if [ -z "$passes" ]; then
        passes=1
    fi
    # Confirm Passes
    echo "The drive will go through $passes passes [y/n]"
    read -r confirm
    done

    confirm="n"
    while [ "$confirm" != "y" ]; do
    # Power Off Device After Finished?
    echo "Power off device after anhialation? [y/n]"
    read -r confirm
    if [ "$confirm" == "y" ]; then
        powerOff="y"
    fi
    done

    # Check Confirmation
    confirm="n"
    while [ "$confirm" != "y" ]; do
        echo "Drive $victimsDrive will be anhialated for $passes passes"
        if [ "$powerOff" == "y" ]; then
            echo "Device will be powered off after anhialation"
        else
            echo "Device will not be powered off after anhialation"
        fi
        echo "Does everything look okay? [y/n]"
        read -r confirm
    done
done

# FINAL CONFIRMATION
printf "THIS WILL ANHIALATE ALL DATA ON %s\n
YOU WILL NOT BE ABLE TO RECOVER ANY DATA\n
ARE YOU SURE? [y/n]" "$victimsDrive"
read -r confirm

if [ "$confirm" == "n" ]; then
    echo "Aborting"
    activate="n"
elif [ "$confirm" == "wait" ]; then
    echo "You know what, come back to me when you've thought it through"
    activate="n"
elif [ "$confirm" == "nah" ]; then
    echo "Real shit, $victimsDrive is a G"
    activate="n"
elif [ "$confirm" == "ok" ]; then
    echo 'tf u mean "ok" I asked [y/n]'
    echo 'screw you, do it all over again'
    activate="n"
elif [ "$confirm" == "y" ]; then
    echo "Activating"
    activate="y"
elif [ "$confirm" == "yolo" ]; then
    echo "Real shit, fuck $victimsDrive"
    activate="y"
else
    echo "If you see this, that means I didn't understand that word"
    echo "Do a PR to add support for that word"
    activate="n"
fi

if [ "$activate" == "n" ]; then
    exit 1
elif [ "$activate" == "y" ]; then
    # Anhialation
    for i in $(seq 1 "$passes"); do
        echo "/dev/random phase of pass $i of $passes"
        # sudo dd if=/dev/random of=$victimsDrive bs=1M status=progress
        echo "/dev/urandom Done!"
        echo "/dev/zero phase of pass $i of $passes"
        # sudo dd if=/dev/zero of=$victimsDrive bs=1M status=progress
        echo "/dev/zero Done!"
    done
fi
echo "Finished Anhialation of $victimsDrive through $passes passes"
if [ "$powerOff" == "y" ]; then
    echo "Powering off"
    shutdown -h now
fi


