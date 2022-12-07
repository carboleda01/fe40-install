# Taken from https://askubuntu.com/questions/1421163/ubuntu-22-04-guest-additions-cd-shared-clipboard-shared-folder-do-not-work
sudo apt update
sudo apt install -y build-essential linux-headers-$(uname -r)

sudo mkdir -p /mnt/cdrom

sudo mount /dev/cdrom /mnt/cdrom

cd /mnt/cdrom
sudo ./VBoxLinuxAdditions.run

sudo reboot
