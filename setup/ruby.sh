# RUN THIS SCRIPT AFTER RUNNING INIT.SH //// CHANGE VERSION NUMBER IN LINK AS NECESSARY
wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz
tar -xzvf ruby-install-0.4.3.tar.gz
cd ruby-install-0.4.3/
sudo make install
sudo ruby-install -i /opt/rubies/ ruby 2.1.2
echo "ATTENTION: in order to have all ruby commands work, copy the contents of 2.1.2 in /opt/rubies/2.1.2 to /opt/rubies. Also run 'chruby 2.1.2'"
