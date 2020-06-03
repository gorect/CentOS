#!/bin/bash

## Before you can install Pi-hole on CentOS you need to disable SELinux

echo " Change the following line from"
echo "SELINUX=enabled"
echo "      to       "
echo "SELINUX=disabled"
echo "Then reboot"
sleep 5
vi /etc/selinux/config
