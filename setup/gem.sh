chruby 2.1.0
gem install bundler
gem install rails --no-ri --no-rdoc
gem install whenever
# configure whenever gem for cron jobs
cd ~
wheneverize
whenever --update-crontab admin
echo "DO NOT MAKE NEW RAILS PROJECT WITHOUT ADDING THE BUNDLE DIRECTORY SO NO GEMS ARE INSTALLED SYSTEM-WIDE"
