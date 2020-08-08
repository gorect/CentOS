#!/bin/bash
echo "sudo yum update -y"
sudo yum update -y

#Installs the locate tool
echo "yum install mlocate"
yum install mlocate -y

#Resets the locate database cronjob
echo "sudo ionice -c3 updatedb"
sudo ionice -c3 updatedb
