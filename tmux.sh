#!/bin/zsh

SESSIONNAME="RAILS"
tmux new-session -d -s$SESSIONNAME 

# SETUP WINDOWS
cd ~ && tmux new-window -t $SESSIONNAME:1 -n "IDE"
tmux split-window -h # split main window vertically
tmux select-pane -t 0 # select left (2nd) pane
tmux split-window -v # split second pane into 2, horizontally
tmux resize-pane -D 7 # make the top portion of the second pane larger (for tree window)
tmux select-pane -t 2 # select main vim window
tmux resize-pane -L 50 # make vim window wider to the left
# SERVER WINDOW
cd ~ && tmux new-window -t $SESSIONNAME:2 -n "Server"
tmux split-window -v
tmux select-pane -t 0
tmux resize-pane -U 10
# ATTACH TO SESSION
tmux a -t $SESSIONNAME
