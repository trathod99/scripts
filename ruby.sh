# RUN THIS SCRIPT AFTER RUNNING INIT.SH //// CHANGE VERSION NUMBER IN LINK AS NECESSARY
cd ~
wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.0.tar.bz2
tar -xjvf ruby-2.1.0.tar.bz2
cd ruby-2.1.0
./configure --prefix=/opt/rubies/ruby-2.1.0
make
sudo make install
