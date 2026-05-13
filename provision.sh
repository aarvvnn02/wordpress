#!/bin/bash

sudo apt update

sudo apt install docker.io -y
sudo apt install docker-compose -y
sudo apt install git -y

sudo systemctl start docker
sudo systemctl enable docker

mkdir -p /home/vagrant/site

cp /vagrant/docker-compose.yml /home/vagrant/
cp /vagrant/sync.sh /home/vagrant/

chmod +x /home/vagrant/sync.sh

/home/vagrant/sync.sh

cd /home/vagrant

sudo docker-compose up -d
