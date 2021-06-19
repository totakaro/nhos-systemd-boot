#! /bin/sh

# NHOS Local Log Server
# By @totakaro 2021
# MIT License

# Check if SystemD Boot was already installed
if [ -f /mnt/nhos/scripts.sh/systemd.log ]; then
  exit
fi

# Downloading SystemD Boot files
cd /tmp
wget https://github.com/totakaro/nhos-systemd-boot/blob/main/systemd-boot.zip?raw=true
unzip systemd-boot.zip
sudo mkdir /mnt/root
sudo mount /dev/sda3 /mnt/root
sudo cp -vr EFI loader /mnt/root
sudo umount /mnt/root
sudo reboot