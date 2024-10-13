#!/bin/bash

# installs GoofyShellScripts

# Clone the repo
echo "Cloning repo"
git clone https://github.com/MattheDev53/GoofyShellScripts.git

# Symlink the repo folder to a central directory that's easy to reach
if [ ! -d ~/.progs ]; then
    echo "Creating ~/.progs"
    mkdir ~/.progs
fi
    ln -s ~/GoofyShellScripts ~/.progs

# Edit .bashrc
echo "Editing .bashrc"
echo "alias startShizuku=\"~/.progs/startShizuku.sh\"" >> ~/.bashrc
echo "alias tmuxClear=\"~/.progs/tmuxClear.sh\"" >> ~/.bashrc