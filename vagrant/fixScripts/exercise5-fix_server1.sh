#!/bin/bash

# generate public/private key
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -N '' -C vagrant@server1

# add read permission to everyone
chmod +r /home/vagrant/.ssh/id_rsa

# copy the piblic key to tmp folder
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/key.pub

echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
