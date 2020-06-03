#!/bin/bash

## First install wget so that you can pull down the pi-hole packages
echo "yum install wget -y"
yum install wget -y

## Wget the installer
echo "wget -O basic-install.sh https://install.pi-hol.net"
wget -O basic-install.sh https://install.pi-hol.net

## Run the bash script to install pi-hole
echo "bash basic-install.sh"
bash basic-install.sh
