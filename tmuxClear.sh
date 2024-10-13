#!/bin/bash

# kills all tmux sessions

# The initial wipeout
tmux kill-session -a

# Killing the straggler
tmux kill-session