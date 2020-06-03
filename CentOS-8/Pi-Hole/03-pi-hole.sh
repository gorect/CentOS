#!/bin/bash
echo "git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole"
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
echo "cd Pi-hole/automated install/"
cd "Pi-hole/automated install/"
echo "sed -i "s/lighttpd\slighttpd-fastcgi//" basic-install.sh"
sed -i "s/lighttpd\slighttpd-fastcgi//" basic-install.sh
echo "chmod +x basic-install.sh"
chmod +x basic-install.sh
echo "./basic-install.sh"
./basic-install.sh
