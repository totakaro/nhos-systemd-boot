#! /bin/sh

# NHOS Local Log Server
# By @totakaro 2021
# MIT License

# Check if SystemD Boot was already installed
if [ -f /mnt/nhos/scripts.sh/systemd-boot.zip ]; then
  exit
fi

# Downloading SystemD Boot files
cd /mnt/nhos/scripts.sh
wget -O systemd-boot.zip https://github.com/totakaro/nhos-systemd-boot/blob/main/systemd-boot.zip?raw=true
cp -v systemd-boot.zip /tmp
cd /tmp
unzip systemd-boot.zip
sudo mkdir /mnt/root
sudo mount /dev/sda3 /mnt/root
sudo cp -vr EFI loader /mnt/root
sudo umount /mnt/root
sudo reboot
