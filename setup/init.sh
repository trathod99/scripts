#!/bin/bash

# GET UPDATES AND INSTALL REQUIRED SOFTWARE
sudo apt-get update && sudo apt-get install build-essential libffi-dev libgdbm-dev libncurses5-dev libyaml-dev nodejs zlib1g-dev libpq-dev openssl libreadline-dev libssl-dev libsqlite3-dev postgresql zsh ack-grep apache2 pandoc texlive exuberant-ctags tree

# CONFIGURE GIT
git config --global user.name "Tyler"
git config --global user.email "tyler.visca.barca@gmail.com"

# INSTALL OHMYZSH
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# INSTALL PATHOGEN FOR VIM
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# INSTALL SEOUL COLOR SCHEME
cd ~/.vim/bundle
git clone https://github.com/junegunn/seoul256.vim.git

# CREATE NECESSARY SYMLINKS
ln ~/scripts/.vimrc ~/.vimrc
ln ~/scripts/.zshrc ~/.zshrc
ln ~/scripts/tyler.zsh-theme ~/.oh-my-zsh/themes/tyler.zsh-theme
ln ~/scripts/.tmux.conf ~/.tmux.conf

# INSTALL VIM PLUGINS
git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo # gundo
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim # ctrlp
git clone https://github.com/fholgado/minibufexpl.vim.git ~/.vim/bundle/minibufexpl # MiniBufferExplore 

# INSTALL CHRUBY
cd ~  
wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
tar -xzvf chruby-0.3.8.tar.gz
cd chruby-0.3.8/
sudo make install

# CHANGE DEFAULT SHELL
sudo chsh -s /bin/zsh vagrant

# GENERATE AN SSH KEY
cd ~/.ssh 
ssh-keygen -t rsa -C "tyler.visca.barca@gmail.com"
cd ~/scripts
git remote set-url origin git@github.com:trathod99/scripts/repo.git
