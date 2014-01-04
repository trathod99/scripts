#!/bin/bash

# GET UPDATES AND INSTALL REQUIRED SOFTWARE
sudo apt-get update && sudo apt-get install build-essential nodejs zlib1g-dev libpq-dev openssl libreadline-dev libssl-dev libsqlite3-dev postgresql git zsh ack-grep

# CLONE MY DOTFILES INTO THE SCRIPTS DIRECTORY
git clone git@github.com:trathod99/scripts.git ~/scripts

# INSTALL OHMYZSH
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# INSTALL PATHOGEN FOR VIM
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# INSTALL SOLARIZED COLOR SCHEME
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# REMOVE ANY FILES THAT NEED TO BE SYMLINKED
rm ~/.vimrc ~/.zshrc ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim

# CREATE NECESSARY SYMLINKS
ln ~/scripts/.vimrc ~/.vimrc
ln ~/scripts/.zshrc ~/.zshrc
ln ~/scripts/tyler.zsh-theme ~/.oh-my-zsh/themes/tyler.zsh-theme
ln ~/scripts/solarized.vim ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim
ln ~/scripts/.tmux.conf ~/tmux.conf

# INSTALL VIM PLUGINS
git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo # gundo
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim # ctrlp
git clone https://github.com/fholgado/minibufexpl.vim.git ~/.vim/bundle/minibufexpl # MiniBufferExplore 
