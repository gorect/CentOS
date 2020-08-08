#!/bin/bash
#update CentOS
yum update -y

#First install the CentOS 7 EPEL repository
echo "sudo yum install epel-release"
sudo yum install epel-release -y

#Installs Ansible with yum
echo "sudo yum install ansible"
sudo yum install ansible -y
