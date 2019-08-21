#!/bin/bash

# insert the public key into the authorized_keys file
cat /vagrant/key.pub  >> /home/vagrant/.ssh/authorized_keys

# add read permission to everyone
chmod +r /home/vagrant/.ssh/authorized_keys

# remove the tmp key
rm /vagrant/key.pub
