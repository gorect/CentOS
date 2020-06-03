#!/bin/bash
echo "Install epel repo and remi repo"
sleep 3
echo "dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y"
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
echo "dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y"
dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y

echo "Check php module list and Install PHP7.4"
echo "dnf module list php"
dnf module list php
sleep 5
echo "dnf module enable php:remi-7.4 -y"
dnf module enable php:remi-7.4 -y
sleep 5

echo "Install PHP and the Extensions"
echo "dnf install php php-cli php-common php-json php-xml php-mbstring php-mysqli php-zip php-intl -y"
dnf install php php-cli php-common php-json php-xml php-mbstring php-mysqli php-zip php-intl -y

echo "Done"
sleep 1
