#!/bin/bash
sudo apt-get update -y  &&
sudo apt-get install -y \
git \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common &&
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y &&
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y && 
sudo usermod -aG docker ubuntu
sudo git clone https://github.com/ryancomia/devops-exercise-task1.git /home/ec2-user/devdata
