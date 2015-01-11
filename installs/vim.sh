sudo apt-get remove vim-tiny vim-common vim-runtime
sudo apt-get install python-dev ruby-dev
sudo apt-get build-dep vim
cd ~
hg clone https://vim.googlecode.com/hg/vim vim
cd vim
./configure --with-features=huge --enable-x=no --disable-gui --enable-pythoninterp --enable-rubyinterp
make
sudo make install
