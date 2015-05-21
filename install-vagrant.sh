#!/bin/bash

apt-get -y update > /dev/null
apt-get -y dist-upgrade > /dev/null

# install virtualbox
if sudo apt-get -qq install virtualbox; then
    echo "virtualbox package already install"
else
    sudo apt-get -y install virtualbox
    echo "Successfully installed virtualbox"    
fi

# install vargrant
if sudo apt-get -qq install vagrant; then
    echo "vagrant package already install"
else
    sudo apt-get -y install vagrant
    echo "Successfully installed vagrant"    
fi

sudo apt-get -y install dkms
sudo apt-get -y install virtualbox-dkms
sudo apt-get -y install linux-headers-$(uname -r)

# Before attempting to run this be sure that the current running Kernel headers are installed on your system. If you don't you will receive an error indicating that you need to install them or use the --kernelsource option to point to said headers.
sudo dpkg-reconfigure virtualbox-dkms
sudo dpkg-reconfigure virtualbox

# install adapter nfs
sudo apt-get install nfs-common nfs-kernel-server

# Install the VirtualBox guest additions plugin
vagrant plugin install vagrant-vbguest