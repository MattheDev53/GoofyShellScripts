# GoofyShellScripts
Goofy Shell Scripts I made to make my life easier

# How to Make it a Command
## Manual Install
1. Clone this repo
2. Symlink the repo folder to a central directory that's easy to reach (I personally like `~/.progs` but anything works)
3. Edit .bashrc according to which commands you want

## Install Script
```
curl -s -L https://raw.githubusercontent.com/MattheDev53/GoofyShellScripts/refs/heads/main/installGSS.sh | bash
```
**WARNING** This will change your .bashrc, read over the scripts you run

# DeSCRIPTions
See what I did there?

## startShizuku.sh
Starts Shizuku on Android via ADB. Make sure you have ADB or else this script won't work.

## tmuxClear.sh
*Actually* kills all tmux sessions. `tmux kill-session -a` always leaves one tmux session open, when I want to kill *all* of them.

## fixFlatpakCursors.sh
This fixes a bug in flatpak where custom cursors aren't able to be seen in flatpak apps