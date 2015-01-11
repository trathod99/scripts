#!/bin/bash

# GET UPDATES AND INSTALL REQUIRED SOFTWARE
sudo apt-get update && sudo apt-get install build-essential libffi-dev libgdbm-dev libncurses5-dev libyaml-dev nodejs zlib1g-dev libpq-dev openssl libreadline-dev libssl-dev libsqlite3-dev postgresql zsh ack-grep apache2 pandoc texlive exuberant-ctags tree automake silversearcher-ag inotify-tools mercurial python-software-properties
mkdir ~/DRIVE
mkdir ~/.npm-packages
mkdir /tmp/undo

# CONFIGURE GIT
git config --global user.name "Tyler"
git config --global user.email "tyler.visca.barca@gmail.com"
git config --global core.pager 'vim -R -' # use vim as pager for git logs

# INSTALL OHMYZSH
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# INSTALL ZSH PLUGINS
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# INSTALL PATHOGEN FOR VIM
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# INSTALL FLATCOLOR COLOR SCHEME
cd ~/.vim/bundle
git clone https://github.com/MaxSt/FlatColor.git 

# CREATE NECESSARY SYMLINKS
ln ~/scripts/dotfiles/.vimrc ~/.vimrc
ln ~/scripts/dotfiles/.zshrc ~/.zshrc
ln ~/scripts/configs/tyler.zsh-theme ~/.oh-my-zsh/themes/tyler.zsh-theme
ln ~/scripts/dotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
ln ~/scripts/dotfiles/.tmux.conf ~/.tmux.conf
ln ~/scripts/dotfiles/.gemrc ~/.gemrc
ln ~/scripts/dotfiles/.dircolors ~/.dircolors
ln ~/scripts/dotfiles/.zshenv ~/.zshenv
ln ~/scripts/.npmrc ~/.npmrc

# INSTALL VIM PLUGINS
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim # ctrlp
git clone https://github.com/bling/vim-bufferline ~/.vim/bundle/vim-bufferline # bufferline
git clone https://github.com/Yggdroot/indentLine ~/.vim/bundle/indentLine # indentLine
git clone https://github.com/luochen1990/rainbow ~/.vim/bundle/rainbow # rainbow parentheses

# INSTALL CHRUBY
cd ~  
wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
tar -xzvf chruby-0.3.8.tar.gz
cd chruby-0.3.8/
sudo make install
curl -s -F "token=au62YZTioXTEYXXhNeNtkAbZGMTa4K" -F "user=uHciazddywQjbH4JKbrsTeK9mgcZvx" -F "message=Almost Done\!" https://api.pushover.net/1/messages.json

# CHANGE DEFAULT SHELL
sudo chsh -s /bin/zsh tyler 
rm ~/.zcompdump
git remote set-url origin git@github.com:trathod99/scripts.git

# GENERATE AN SSH KEY
cd ~/.ssh 
ssh-keygen -t rsa -C "tyler.visca.barca@gmail.com"
cd ~/scripts

