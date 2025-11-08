#!/bin/bash

sudo yum install java-17-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable Jenkins
sudo usermod -aG jenkins $USER
echo "Jenkins Installed Successfully"
password=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo "Jenkins initial admin password is: ${password}"

