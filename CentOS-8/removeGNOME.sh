#!/bin/bash
echo "dnf grouplist"
dnf grouplist | grep GUI
sleep 5

echo "dnf groupremove 'X Window System' 'GNOME'"
dnf groupremove 'X Window System' 'GNOME' -y

echo "systemctl set-default multi-user.target"
systemctl set-default multi-user.target

echo "sudo reboot"
echo ".. Press Ctrl C to cancel reboot .."
sleep 10
sudo reboot
