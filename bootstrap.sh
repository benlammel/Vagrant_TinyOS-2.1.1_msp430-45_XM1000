#!/usr/bin/env bash

# key
wget -O - http://tinyprod.net/repos/debian/tinyprod.key | sudo apt-key add -

echo "deb http://tinyprod.net/repos/debian squeeze main" >> /etc/apt/sources.list

# force update
apt-get update

# install tinyos-tools
apt-get install -y --force-yes nesc tinyos-tools msp430-tinyos avr-tinyos automake libtool

echo "source /vagrant/tinyos-2.1.1/tinyos.sh" >> /home/vagrant/.bashrc

source /home/vagrant/.bashrc

sudo usermod -a -G dialout vagrant