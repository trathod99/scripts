wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.bz2
tar -xjvf ruby-2.1.2.tar.bz2
cd ruby-2.1.2
./configure --prefix=/opt/rubies/ruby-2.1.2
make
sudo make install
