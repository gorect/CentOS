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
echo "dnf install php php-cli php-common php-json php-xml php-mbstring php-mysqli php-zip php-intl"
dnf install php php-cli php-common php-json php-xml php-mbstring php-mysqli php-zip php-intl

echo "Install Lighttpd From Source"
echo "dnf install -y autoconf make automake libtool pcre-devel  zlib-devel bzip2-devel git"
dnf install -y autoconf make automake libtool pcre-devel  zlib-devel bzip2-devel git
echo "git clone https://git.lighttpd.net/lighttpd/lighttpd1.4.git"
git clone https://git.lighttpd.net/lighttpd/lighttpd1.4.git
echo "cd lighttpd1.4/"
cd lighttpd1.4/
echo "./autogen.sh && ./configure --disable-dependency-tracking"
./autogen.sh && ./configure --disable-dependency-tracking
echo "make && make install"
make && make install

## wget lighttpd.service file


