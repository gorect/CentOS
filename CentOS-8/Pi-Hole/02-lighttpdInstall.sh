#!/bin/bash
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

## wget lighttpd.service file from github

## "Reload Daemon and Enable Lighttpd"
## systemctl daemon-reload
## systemctl enable lighttpd

## "Configure Lighttpd Directory"
## mkdir -p /srv/www
## mkdir -p /etc/lighttpd/conf.d
## mkdir /etc/lighttpd/vhosts.d
## cp doc/config/*.conf /etc/lighttpd/
## cp doc/config/conf.d/*.conf /etc/lighttpd/conf.d

## "Add user and group for Lighttpd Process"
## groupadd lighttpd
## useradd -r -M -g lighttpd lighttpd

## Configure Lighttpd Log Directory
## mkdir /var/log/lighttpd
## chown lighttpd: /var/log/lighttpd

## Start Lighttpd Service
## systemctl start lighttpd
## systemctl status lighttpd
