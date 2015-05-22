#!/bin/bash

apt-get install curl libcurl3 libcurl3-dev php5-curl

cd /tmp/

# composer
sudo curl -LsS https://getcomposer.org/installer -o /usr/local/bin/composer
sudo chmod a+x /usr/local/bin/symfony 

# Symfony installer
sudo curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
sudo chmod a+x /usr/local/bin/symfony 