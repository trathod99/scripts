#!/bin/bash
sudo apt-get update && sudo apt-get install build-essential nodejs zlib1g-dev libpq-dev openssl libreadline-dev libssl-dev libsqlite3-dev postgresql git zsh
git clone git@github.com:trathod99/scripts.git ~
rm ~/.vimrc ~/.zshrc ~/tmux.conf 
ln ~/scripts/.vimrc ~/.vimrc
ln ~/scripts/.zshrc ~/.zshrc
ln ~/tmux.conf ~/tmux.conf
