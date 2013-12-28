#!/bin/bash
sudo apt-get update && sudo apt-get install build-essential nodejs zlib1g-dev libpq-dev openssl libreadline-dev libssl-dev libsqlite3-dev postgresql git zsh
git clone git@github.com:trathod99/scripts.git ~/scripts
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
rm ~/.vimrc ~/.zshrc ~/tmux.conf 
ln ~/scripts/.vimrc ~/.vimrc
ln ~/scripts/.zshrc ~/.zshrc
ln ~/scripts/tylwr.zsh-theme ~/.oh-my-zsh/themes/tyler.zsh-theme
ln ~/scripts/solarized.vim ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim
ln ~/tmux.conf ~/tmux.conf
