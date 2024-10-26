# GoofyShellScripts
Goofy Shell Scripts I made to make my life easier

# How to Make it a Command
## Manual Install
1. Clone this repo
2. Use `ailiases.md` to alias commands by putting the ailias in .bashrc/equivilent according to which commands you want

# DeSCRIPTions
See what I did there?

## startShizuku.sh
Starts Shizuku on Android via ADB. Make sure you have ADB or else this script won't work.

## tmuxClear.sh
*Actually* kills all tmux sessions. `tmux kill-session -a` always leaves one tmux session open, when I want to kill *all* of them.

## fixFlatpakCursors.sh
This fixes a bug in flatpak where custom cursors aren't able to be seen in flatpak apps

## flatPak.sh
Backs up installed flatpak apps to `flatpakBackup.txt`

## flatUnpak.sh
Installs backed up flatpak apps from `flatpakBackup.txt`

## fancyClear.sh
I'm not sure about you, but I like putting neofetch in my .bashrc so that my computer specs are displayed everytime I go into a terminal. I like the aesthetic of it. This script makes it so that it runs neofetch after clearing the terminal, like it would if i closed and reopened my terminal.

## driveAnhialator.sh
It anhialates your drive, like a good drive anhialator should. It uses `/dev/random` and `dev/zero` to anhialate your drive. It also has goofy ass easter eggs for no reason.