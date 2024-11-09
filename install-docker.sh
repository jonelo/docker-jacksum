#!/bin/bash

# Update packet sources
sudo apt update
sudo apt install apt-transport-https curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# Install Docker
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Check the Docker status
sudo systemctl status docker

# Add your user to the docker group
sudo usermod -aG docker $USER

# Log in to the new docker group (to avoid having to log out and log in again)
newgrp docker

# Test
docker run hello-world
