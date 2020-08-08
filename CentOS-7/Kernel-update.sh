#!/bin/bash

#To check current kernel version on CentOS, run the following command:
echo "uname –msr"
uname –msr
      #Thi will output somthing like "Linux 3.10.0-862...etc"

##Note:
      #sleep commands takes seconds by default but can handle time flags for seconds (s), minutes (m), hours (h), days (d).
      #Ex. sleep for 5 minutes will look like "sleep 5m"
      #Here we are just sleeping for 5 seconds
echo "sleep"
sleep 5

#Always run the update command before installing new packages
echo "sudo yum update -y"
sudo yum update -y
      #This will also make sure that you have access to the lates kernel

#To install a newer kernel version, you need to enable the ELRepo repository:
      #First type
echo "sudo rpm –-import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org"
sudo rpm –-import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
      #This will give you the proper GPG signatures to install the new kernal as CentOS will not let you install unsigned software packages

#Now install the ElRepo:
echo "sudo rpm -Uvh https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm"
sudo rpm -Uvh https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm

#List the avaiable Kernels
echo "yum list available --disablerepo='*' --enablerepo=elrepo-kernel"
yum list available --disablerepo='*' --enablerepo=elrepo-kernel
  #This will return a list of kernels that includes a selection of kernel-lt and kernel-ml modules.
echo "Kernel-lt = LTS"

  #Installs the lastestLTS kernel
echo "sudo yum --enablerepo=elrepo-kernel install kernel-lt"
sudo yum --enablerepo=elrepo-kernel install kernel-lt
y
echo "Ready to edit /etc/default/grub"
echo "To change the default Kernel at boot"
echo "change GRUB_DEFAULT=X to GRUB_DEFAULT=0"

echo "sleep"
sleep 3

echo "sudo vim /etc/default/grub"
sudo vim /etc/default/grub
  #Make your edits here

echo "sudo grub2-mkconfig -o /boot/grub2/grub.cfg"
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

echo "Reboot in 3 seconds"
sleep 3
reboot
