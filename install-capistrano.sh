#!/bin/bash

sudo apt-get install bundler
sudo gem install bundler
sudo gem install capistrano_rsync_with_remote_cache

cd /var/www/
git clone https://github.com/capistrano/capistrano.git

gem build *.gemspec
gem install *.gem

