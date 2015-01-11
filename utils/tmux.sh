#!/bin/zsh

SESSIONNAME="DEV"
tmux new-session -d -s$SESSIONNAME 

# SETUP WINDOWS
cd ~ && tmux new-window -t $SESSIONNAME:1 -n "IDE"
cd ~ && tmux new-window -t $SESSIONNAME:2 -n "Server"
# ATTACH TO SESSION
tmux selectw -t 1
tmux a -t $SESSIONNAME
