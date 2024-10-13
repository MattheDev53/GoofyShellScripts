#!/bin/bash

# installs GoofyShellScripts

# Clone the repo
echo "Cloning repo"
git clone https://github.com/MattheDev53/GoofyShellScripts.git

# Edit .bashrc
echo "Editing .bashrc"
echo "alias startShizuku=\"~/GoofyShellScripts/startShizuku.sh\"" >> ~/.bashrc
echo "alias tmuxClear=\"~/GoofyShellScripts/tmuxClear.sh\"" >> ~/.bashrc
echo "Done!"