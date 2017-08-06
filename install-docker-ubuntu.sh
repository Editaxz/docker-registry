#!/bin/bash
echo Instalar Docker en Ubuntu

# Remover las versiones antiguas de docker
sudo apt-get purge -y docker-engine
sudo apt-get autoremove -y --purge docker-engine
sudo apt-get autoclean
sudo rm -rf /var/lib/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker

# Remover docker engine
sudo apt-get remove docker docker-engine

# Instalar paquetes que permiten a apt usar un repositorio sobre  HTTPS
yes Y | sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Añadir docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88

# set up the stable repository

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" 

# Install docker
sudo apt-get update
yes Y | sudo apt-get install docker-ce

# Not use sudo, add user to Docker group
sudo usermod -aG docker $USER

#Know the Ubuntu Version
#"lbs_release -a

#Change user account
sudo -i
su edith
docker images

