# RUN THIS SCRIPT AFTER RUNNING INIT.SH //// CHANGE VERSION NUMBER IN LINK AS NECESSARY
wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz
tar -xzvf ruby-install-0.4.3.tar.gz
cd ruby-install-0.4.3/
sudo make install
ruby-install ruby 2.1.0
